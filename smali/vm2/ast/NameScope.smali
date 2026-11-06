###### Class vm2.ast.NameScope (vm2.ast.NameScope)
.class public Lvm2/ast/NameScope;
.super Ljava/lang/Object;
.source "NameScope.java"


# static fields
.field private static final LUA_KEYWORDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public functionNestingCount:I

.field public final namedVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lvm2/ast/Variable;",
            ">;"
        }
    .end annotation
.end field

.field public final outerScope:Lvm2/ast/NameScope;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lvm2/ast/NameScope;->LUA_KEYWORDS:Ljava/util/Set;

    .line 35
    const-string v20, "until"

    const-string v21, "while"

    const-string v1, "and"

    const-string v2, "break"

    const-string v3, "do"

    const-string v4, "else"

    const-string v5, "elseif"

    const-string v6, "end"

    const-string v7, "false"

    const-string v8, "for"

    const-string v9, "function"

    const-string v10, "if"

    const-string v11, "in"

    const-string v12, "local"

    const-string v13, "nil"

    const-string v14, "not"

    const-string v15, "or"

    const-string v16, "repeat"

    const-string v17, "return"

    const-string v18, "then"

    const-string v19, "true"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_36
    const/16 v2, 0x15

    if-ge v1, v2, :cond_44

    .line 41
    sget-object v2, Lvm2/ast/NameScope;->LUA_KEYWORDS:Ljava/util/Set;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_44
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lvm2/ast/NameScope;->outerScope:Lvm2/ast/NameScope;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lvm2/ast/NameScope;->functionNestingCount:I

    return-void
.end method

.method public constructor <init>(Lvm2/ast/NameScope;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lvm2/ast/NameScope;->outerScope:Lvm2/ast/NameScope;

    if-eqz p1, :cond_11

    .line 59
    iget p1, p1, Lvm2/ast/NameScope;->functionNestingCount:I

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput p1, p0, Lvm2/ast/NameScope;->functionNestingCount:I

    return-void
.end method

.method private validateIsNotKeyword(Ljava/lang/String;)V
    .registers 5

    .line 82
    sget-object v0, Lvm2/ast/NameScope;->LUA_KEYWORDS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 83
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name is a keyword: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public define(Ljava/lang/String;)Lvm2/ast/Variable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lvm2/ast/NameScope;->validateIsNotKeyword(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lvm2/ast/Variable;

    invoke-direct {v0, p1, p0}, Lvm2/ast/Variable;-><init>(Ljava/lang/String;Lvm2/ast/NameScope;)V

    .line 77
    iget-object v1, p0, Lvm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public find(Ljava/lang/String;)Lvm2/ast/Variable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lvm2/ast/NameScope;->validateIsNotKeyword(Ljava/lang/String;)V

    move-object v0, p0

    :goto_4
    if-eqz v0, :cond_1a

    .line 66
    iget-object v1, v0, Lvm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 67
    iget-object v0, v0, Lvm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvm2/ast/Variable;

    return-object p1

    .line 65
    :cond_17
    iget-object v0, v0, Lvm2/ast/NameScope;->outerScope:Lvm2/ast/NameScope;

    goto :goto_4

    .line 68
    :cond_1a
    new-instance v0, Lvm2/ast/Variable;

    invoke-direct {v0, p1}, Lvm2/ast/Variable;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lvm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

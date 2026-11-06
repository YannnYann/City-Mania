###### Class vm2.ast.Stat (vm2.ast.Stat)
.class public abstract Lvm2/ast/Stat;
.super Lvm2/ast/SyntaxElement;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/ast/Stat$WhileDo;,
        Lvm2/ast/Stat$RepeatUntil;,
        Lvm2/ast/Stat$Break;,
        Lvm2/ast/Stat$Return;,
        Lvm2/ast/Stat$Assign;,
        Lvm2/ast/Stat$FuncCallStat;,
        Lvm2/ast/Stat$LocalFuncDef;,
        Lvm2/ast/Stat$NumericFor;,
        Lvm2/ast/Stat$FuncDef;,
        Lvm2/ast/Stat$GenericFor;,
        Lvm2/ast/Stat$LocalAssign;,
        Lvm2/ast/Stat$IfThenElse;,
        Lvm2/ast/Stat$Goto;,
        Lvm2/ast/Stat$Label;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    return-void
.end method

.method public static assignment(Ljava/util/List;Ljava/util/List;)Lvm2/ast/Stat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Exp$VarExp;",
            ">;",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;)",
            "Lvm2/ast/Stat;"
        }
    .end annotation

    .line 53
    new-instance v0, Lvm2/ast/Stat$Assign;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Stat$Assign;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static block(Lvm2/ast/Block;)Lvm2/ast/Stat;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static breakstat()Lvm2/ast/Stat;
    .registers 1

    .line 45
    new-instance v0, Lvm2/ast/Stat$Break;

    invoke-direct {v0}, Lvm2/ast/Stat$Break;-><init>()V

    return-object v0
.end method

.method public static forgeneric(Ljava/util/List;Ljava/util/List;Lvm2/ast/Block;)Lvm2/ast/Stat;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;",
            "Lvm2/ast/Block;",
            ")",
            "Lvm2/ast/Stat;"
        }
    .end annotation

    .line 73
    new-instance v0, Lvm2/ast/Stat$GenericFor;

    invoke-direct {v0, p0, p1, p2}, Lvm2/ast/Stat$GenericFor;-><init>(Ljava/util/List;Ljava/util/List;Lvm2/ast/Block;)V

    return-object v0
.end method

.method public static fornumeric(Ljava/lang/String;Lvm2/ast/Exp;Lvm2/ast/Exp;Lvm2/ast/Exp;Lvm2/ast/Block;)Lvm2/ast/Stat;
    .registers 11

    .line 65
    new-instance v0, Lvm2/ast/Stat$NumericFor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lvm2/ast/Stat$NumericFor;-><init>(Ljava/lang/String;Lvm2/ast/Exp;Lvm2/ast/Exp;Lvm2/ast/Exp;Lvm2/ast/Block;)V

    return-object v0
.end method

.method public static functioncall(Lvm2/ast/Exp$FuncCall;)Lvm2/ast/Stat;
    .registers 2

    .line 57
    new-instance v0, Lvm2/ast/Stat$FuncCallStat;

    invoke-direct {v0, p0}, Lvm2/ast/Stat$FuncCallStat;-><init>(Lvm2/ast/Exp$FuncCall;)V

    return-object v0
.end method

.method public static functiondef(Lvm2/ast/FuncName;Lvm2/ast/FuncBody;)Lvm2/ast/Stat;
    .registers 3

    .line 69
    new-instance v0, Lvm2/ast/Stat$FuncDef;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Stat$FuncDef;-><init>(Lvm2/ast/FuncName;Lvm2/ast/FuncBody;)V

    return-object v0
.end method

.method public static gotostat(Ljava/lang/String;)Lvm2/ast/Stat;
    .registers 2

    .line 85
    new-instance v0, Lvm2/ast/Stat$Goto;

    invoke-direct {v0, p0}, Lvm2/ast/Stat$Goto;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ifthenelse(Lvm2/ast/Exp;Lvm2/ast/Block;Ljava/util/List;Ljava/util/List;Lvm2/ast/Block;)Lvm2/ast/Stat;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvm2/ast/Exp;",
            "Lvm2/ast/Block;",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;",
            "Ljava/util/List<",
            "Lvm2/ast/Block;",
            ">;",
            "Lvm2/ast/Block;",
            ")",
            "Lvm2/ast/Stat;"
        }
    .end annotation

    .line 81
    new-instance v0, Lvm2/ast/Stat$IfThenElse;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lvm2/ast/Stat$IfThenElse;-><init>(Lvm2/ast/Exp;Lvm2/ast/Block;Ljava/util/List;Ljava/util/List;Lvm2/ast/Block;)V

    return-object v0
.end method

.method public static labelstat(Ljava/lang/String;)Lvm2/ast/Stat;
    .registers 2

    .line 89
    new-instance v0, Lvm2/ast/Stat$Label;

    invoke-direct {v0, p0}, Lvm2/ast/Stat$Label;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static localassignment(Ljava/util/List;Ljava/util/List;)Lvm2/ast/Stat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;)",
            "Lvm2/ast/Stat;"
        }
    .end annotation

    .line 77
    new-instance v0, Lvm2/ast/Stat$LocalAssign;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Stat$LocalAssign;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static localfunctiondef(Ljava/lang/String;Lvm2/ast/FuncBody;)Lvm2/ast/Stat;
    .registers 3

    .line 61
    new-instance v0, Lvm2/ast/Stat$LocalFuncDef;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Stat$LocalFuncDef;-><init>(Ljava/lang/String;Lvm2/ast/FuncBody;)V

    return-object v0
.end method

.method public static repeatuntil(Lvm2/ast/Block;Lvm2/ast/Exp;)Lvm2/ast/Stat;
    .registers 3

    .line 41
    new-instance v0, Lvm2/ast/Stat$RepeatUntil;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Stat$RepeatUntil;-><init>(Lvm2/ast/Block;Lvm2/ast/Exp;)V

    return-object v0
.end method

.method public static returnstat(Ljava/util/List;)Lvm2/ast/Stat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;)",
            "Lvm2/ast/Stat;"
        }
    .end annotation

    .line 49
    new-instance v0, Lvm2/ast/Stat$Return;

    invoke-direct {v0, p0}, Lvm2/ast/Stat$Return;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static whiledo(Lvm2/ast/Exp;Lvm2/ast/Block;)Lvm2/ast/Stat;
    .registers 3

    .line 37
    new-instance v0, Lvm2/ast/Stat$WhileDo;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Stat$WhileDo;-><init>(Lvm2/ast/Exp;Lvm2/ast/Block;)V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lvm2/ast/Visitor;)V
.end method

###### Class vm2.ast.Stat.Assign (vm2.ast.Stat$Assign)
.class public Lvm2/ast/Stat$Assign;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Assign"
.end annotation


# instance fields
.field public final exps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;"
        }
    .end annotation
.end field

.field public final vars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Exp$VarExp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Exp$VarExp;",
            ">;",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 117
    iput-object p1, p0, Lvm2/ast/Stat$Assign;->vars:Ljava/util/List;

    .line 118
    iput-object p2, p0, Lvm2/ast/Stat$Assign;->exps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 122
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$Assign;)V

    return-void
.end method

###### Class vm2.ast.Stat.Break (vm2.ast.Stat$Break)
.class public Lvm2/ast/Stat$Break;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Break"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 153
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$Break;)V

    return-void
.end method

###### Class vm2.ast.Stat.FuncCallStat (vm2.ast.Stat$FuncCallStat)
.class public Lvm2/ast/Stat$FuncCallStat;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncCallStat"
.end annotation


# instance fields
.field public final funccall:Lvm2/ast/Exp$FuncCall;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp$FuncCall;)V
    .registers 2

    .line 177
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 178
    iput-object p1, p0, Lvm2/ast/Stat$FuncCallStat;->funccall:Lvm2/ast/Exp$FuncCall;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 182
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$FuncCallStat;)V

    return-void
.end method

###### Class vm2.ast.Stat.FuncDef (vm2.ast.Stat$FuncDef)
.class public Lvm2/ast/Stat$FuncDef;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncDef"
.end annotation


# instance fields
.field public final body:Lvm2/ast/FuncBody;

.field public final name:Lvm2/ast/FuncName;


# direct methods
.method public constructor <init>(Lvm2/ast/FuncName;Lvm2/ast/FuncBody;)V
    .registers 3

    .line 202
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 203
    iput-object p1, p0, Lvm2/ast/Stat$FuncDef;->name:Lvm2/ast/FuncName;

    .line 204
    iput-object p2, p0, Lvm2/ast/Stat$FuncDef;->body:Lvm2/ast/FuncBody;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 208
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$FuncDef;)V

    return-void
.end method

###### Class vm2.ast.Stat.GenericFor (vm2.ast.Stat$GenericFor)
.class public Lvm2/ast/Stat$GenericFor;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericFor"
.end annotation


# instance fields
.field public block:Lvm2/ast/Block;

.field public exps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;"
        }
    .end annotation
.end field

.field public scope:Lvm2/ast/NameScope;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lvm2/ast/Block;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;",
            "Lvm2/ast/Block;",
            ")V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 218
    iput-object p1, p0, Lvm2/ast/Stat$GenericFor;->names:Ljava/util/List;

    .line 219
    iput-object p2, p0, Lvm2/ast/Stat$GenericFor;->exps:Ljava/util/List;

    .line 220
    iput-object p3, p0, Lvm2/ast/Stat$GenericFor;->block:Lvm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 224
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$GenericFor;)V

    return-void
.end method

###### Class vm2.ast.Stat.Goto (vm2.ast.Stat$Goto)
.class public Lvm2/ast/Stat$Goto;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Goto"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 95
    iput-object p1, p0, Lvm2/ast/Stat$Goto;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 98
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$Goto;)V

    return-void
.end method

###### Class vm2.ast.Stat.IfThenElse (vm2.ast.Stat$IfThenElse)
.class public Lvm2/ast/Stat$IfThenElse;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IfThenElse"
.end annotation


# instance fields
.field public final elseblock:Lvm2/ast/Block;

.field public final elseifblocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Block;",
            ">;"
        }
    .end annotation
.end field

.field public final elseifexps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;"
        }
    .end annotation
.end field

.field public final ifblock:Lvm2/ast/Block;

.field public final ifexp:Lvm2/ast/Exp;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp;Lvm2/ast/Block;Ljava/util/List;Ljava/util/List;Lvm2/ast/Block;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvm2/ast/Exp;",
            "Lvm2/ast/Block;",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;",
            "Ljava/util/List<",
            "Lvm2/ast/Block;",
            ">;",
            "Lvm2/ast/Block;",
            ")V"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 267
    iput-object p1, p0, Lvm2/ast/Stat$IfThenElse;->ifexp:Lvm2/ast/Exp;

    .line 268
    iput-object p2, p0, Lvm2/ast/Stat$IfThenElse;->ifblock:Lvm2/ast/Block;

    .line 269
    iput-object p3, p0, Lvm2/ast/Stat$IfThenElse;->elseifexps:Ljava/util/List;

    .line 270
    iput-object p4, p0, Lvm2/ast/Stat$IfThenElse;->elseifblocks:Ljava/util/List;

    .line 271
    iput-object p5, p0, Lvm2/ast/Stat$IfThenElse;->elseblock:Lvm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 275
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$IfThenElse;)V

    return-void
.end method

###### Class vm2.ast.Stat.Label (vm2.ast.Stat$Label)
.class public Lvm2/ast/Stat$Label;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Label"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 104
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 105
    iput-object p1, p0, Lvm2/ast/Stat$Label;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 108
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$Label;)V

    return-void
.end method

###### Class vm2.ast.Stat.LocalAssign (vm2.ast.Stat$LocalAssign)
.class public Lvm2/ast/Stat$LocalAssign;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAssign"
.end annotation


# instance fields
.field public final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;"
        }
    .end annotation
.end field

.field public final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 250
    iput-object p1, p0, Lvm2/ast/Stat$LocalAssign;->names:Ljava/util/List;

    .line 251
    iput-object p2, p0, Lvm2/ast/Stat$LocalAssign;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 255
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$LocalAssign;)V

    return-void
.end method

###### Class vm2.ast.Stat.LocalFuncDef (vm2.ast.Stat$LocalFuncDef)
.class public Lvm2/ast/Stat$LocalFuncDef;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalFuncDef"
.end annotation


# instance fields
.field public final body:Lvm2/ast/FuncBody;

.field public final name:Lvm2/ast/Name;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lvm2/ast/FuncBody;)V
    .registers 4

    .line 189
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 190
    new-instance v0, Lvm2/ast/Name;

    invoke-direct {v0, p1}, Lvm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lvm2/ast/Stat$LocalFuncDef;->name:Lvm2/ast/Name;

    .line 191
    iput-object p2, p0, Lvm2/ast/Stat$LocalFuncDef;->body:Lvm2/ast/FuncBody;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 195
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$LocalFuncDef;)V

    return-void
.end method

###### Class vm2.ast.Stat.NumericFor (vm2.ast.Stat$NumericFor)
.class public Lvm2/ast/Stat$NumericFor;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericFor"
.end annotation


# instance fields
.field public final block:Lvm2/ast/Block;

.field public final initial:Lvm2/ast/Exp;

.field public final limit:Lvm2/ast/Exp;

.field public final name:Lvm2/ast/Name;

.field public scope:Lvm2/ast/NameScope;

.field public final step:Lvm2/ast/Exp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lvm2/ast/Exp;Lvm2/ast/Exp;Lvm2/ast/Exp;Lvm2/ast/Block;)V
    .registers 7

    .line 233
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 234
    new-instance v0, Lvm2/ast/Name;

    invoke-direct {v0, p1}, Lvm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lvm2/ast/Stat$NumericFor;->name:Lvm2/ast/Name;

    .line 235
    iput-object p2, p0, Lvm2/ast/Stat$NumericFor;->initial:Lvm2/ast/Exp;

    .line 236
    iput-object p3, p0, Lvm2/ast/Stat$NumericFor;->limit:Lvm2/ast/Exp;

    .line 237
    iput-object p4, p0, Lvm2/ast/Stat$NumericFor;->step:Lvm2/ast/Exp;

    .line 238
    iput-object p5, p0, Lvm2/ast/Stat$NumericFor;->block:Lvm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 242
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$NumericFor;)V

    return-void
.end method

###### Class vm2.ast.Stat.RepeatUntil (vm2.ast.Stat$RepeatUntil)
.class public Lvm2/ast/Stat$RepeatUntil;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatUntil"
.end annotation


# instance fields
.field public final block:Lvm2/ast/Block;

.field public final exp:Lvm2/ast/Exp;


# direct methods
.method public constructor <init>(Lvm2/ast/Block;Lvm2/ast/Exp;)V
    .registers 3

    .line 142
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 143
    iput-object p1, p0, Lvm2/ast/Stat$RepeatUntil;->block:Lvm2/ast/Block;

    .line 144
    iput-object p2, p0, Lvm2/ast/Stat$RepeatUntil;->exp:Lvm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 147
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$RepeatUntil;)V

    return-void
.end method

###### Class vm2.ast.Stat.Return (vm2.ast.Stat$Return)
.class public Lvm2/ast/Stat$Return;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Return"
.end annotation


# instance fields
.field public final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 160
    iput-object p1, p0, Lvm2/ast/Stat$Return;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 164
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$Return;)V

    return-void
.end method

.method public nreturns()I
    .registers 4

    .line 168
    iget-object v0, p0, Lvm2/ast/Stat$Return;->values:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-lez v0, :cond_1d

    .line 169
    iget-object v1, p0, Lvm2/ast/Stat$Return;->values:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvm2/ast/Exp;

    invoke-virtual {v1}, Lvm2/ast/Exp;->isvarargexp()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, -0x1

    :cond_1d
    return v0
.end method

###### Class vm2.ast.Stat.WhileDo (vm2.ast.Stat$WhileDo)
.class public Lvm2/ast/Stat$WhileDo;
.super Lvm2/ast/Stat;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhileDo"
.end annotation


# instance fields
.field public final block:Lvm2/ast/Block;

.field public final exp:Lvm2/ast/Exp;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp;Lvm2/ast/Block;)V
    .registers 3

    .line 130
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 131
    iput-object p1, p0, Lvm2/ast/Stat$WhileDo;->exp:Lvm2/ast/Exp;

    .line 132
    iput-object p2, p0, Lvm2/ast/Stat$WhileDo;->block:Lvm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 135
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$WhileDo;)V

    return-void
.end method

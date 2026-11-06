###### Class vm2.ast.Exp (vm2.ast.Exp)
.class public abstract Lvm2/ast/Exp;
.super Lvm2/ast/SyntaxElement;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/ast/Exp$Constant;,
        Lvm2/ast/Exp$VarargsExp;,
        Lvm2/ast/Exp$BinopExp;,
        Lvm2/ast/Exp$UnopExp;,
        Lvm2/ast/Exp$AnonFuncDef;,
        Lvm2/ast/Exp$NameExp;,
        Lvm2/ast/Exp$ParensExp;,
        Lvm2/ast/Exp$IndexExp;,
        Lvm2/ast/Exp$PrimaryExp;,
        Lvm2/ast/Exp$FieldExp;,
        Lvm2/ast/Exp$FuncCall;,
        Lvm2/ast/Exp$MethodCall;,
        Lvm2/ast/Exp$VarExp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    return-void
.end method

.method public static anonymousfunction(Lvm2/ast/FuncBody;)Lvm2/ast/Exp;
    .registers 2

    .line 102
    new-instance v0, Lvm2/ast/Exp$AnonFuncDef;

    invoke-direct {v0, p0}, Lvm2/ast/Exp$AnonFuncDef;-><init>(Lvm2/ast/FuncBody;)V

    return-object v0
.end method

.method public static binaryexp(Lvm2/ast/Exp;ILvm2/ast/Exp;)Lvm2/ast/Exp;
    .registers 6

    .line 57
    instance-of v0, p0, Lvm2/ast/Exp$UnopExp;

    if-eqz v0, :cond_20

    .line 58
    move-object v0, p0

    check-cast v0, Lvm2/ast/Exp$UnopExp;

    .line 59
    invoke-static {p1}, Lvm2/ast/Exp;->precedence(I)I

    move-result v1

    iget v2, v0, Lvm2/ast/Exp$UnopExp;->op:I

    invoke-static {v2}, Lvm2/ast/Exp;->precedence(I)I

    move-result v2

    if-le v1, v2, :cond_20

    .line 60
    iget p0, v0, Lvm2/ast/Exp$UnopExp;->op:I

    iget-object v0, v0, Lvm2/ast/Exp$UnopExp;->rhs:Lvm2/ast/Exp;

    invoke-static {v0, p1, p2}, Lvm2/ast/Exp;->binaryexp(Lvm2/ast/Exp;ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object p1

    invoke-static {p0, p1}, Lvm2/ast/Exp;->unaryexp(ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object p0

    return-object p0

    .line 64
    :cond_20
    instance-of v0, p0, Lvm2/ast/Exp$BinopExp;

    if-eqz v0, :cond_54

    .line 65
    move-object v0, p0

    check-cast v0, Lvm2/ast/Exp$BinopExp;

    .line 66
    invoke-static {p1}, Lvm2/ast/Exp;->precedence(I)I

    move-result v1

    iget v2, v0, Lvm2/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lvm2/ast/Exp;->precedence(I)I

    move-result v2

    if-gt v1, v2, :cond_45

    .line 67
    invoke-static {p1}, Lvm2/ast/Exp;->precedence(I)I

    move-result v1

    iget v2, v0, Lvm2/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lvm2/ast/Exp;->precedence(I)I

    move-result v2

    if-ne v1, v2, :cond_54

    invoke-static {p1}, Lvm2/ast/Exp;->isrightassoc(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 68
    :cond_45
    iget-object p0, v0, Lvm2/ast/Exp$BinopExp;->lhs:Lvm2/ast/Exp;

    iget v1, v0, Lvm2/ast/Exp$BinopExp;->op:I

    iget-object v0, v0, Lvm2/ast/Exp$BinopExp;->rhs:Lvm2/ast/Exp;

    invoke-static {v0, p1, p2}, Lvm2/ast/Exp;->binaryexp(Lvm2/ast/Exp;ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lvm2/ast/Exp;->binaryexp(Lvm2/ast/Exp;ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object p0

    return-object p0

    .line 70
    :cond_54
    instance-of v0, p2, Lvm2/ast/Exp$BinopExp;

    if-eqz v0, :cond_88

    .line 71
    move-object v0, p2

    check-cast v0, Lvm2/ast/Exp$BinopExp;

    .line 72
    invoke-static {p1}, Lvm2/ast/Exp;->precedence(I)I

    move-result v1

    iget v2, v0, Lvm2/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lvm2/ast/Exp;->precedence(I)I

    move-result v2

    if-gt v1, v2, :cond_79

    .line 73
    invoke-static {p1}, Lvm2/ast/Exp;->precedence(I)I

    move-result v1

    iget v2, v0, Lvm2/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lvm2/ast/Exp;->precedence(I)I

    move-result v2

    if-ne v1, v2, :cond_88

    invoke-static {p1}, Lvm2/ast/Exp;->isrightassoc(I)Z

    move-result v1

    if-nez v1, :cond_88

    .line 74
    :cond_79
    iget-object p2, v0, Lvm2/ast/Exp$BinopExp;->lhs:Lvm2/ast/Exp;

    invoke-static {p0, p1, p2}, Lvm2/ast/Exp;->binaryexp(Lvm2/ast/Exp;ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object p0

    iget p1, v0, Lvm2/ast/Exp$BinopExp;->op:I

    iget-object p2, v0, Lvm2/ast/Exp$BinopExp;->rhs:Lvm2/ast/Exp;

    invoke-static {p0, p1, p2}, Lvm2/ast/Exp;->binaryexp(Lvm2/ast/Exp;ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object p0

    return-object p0

    .line 76
    :cond_88
    new-instance v0, Lvm2/ast/Exp$BinopExp;

    invoke-direct {v0, p0, p1, p2}, Lvm2/ast/Exp$BinopExp;-><init>(Lvm2/ast/Exp;ILvm2/ast/Exp;)V

    return-object v0
.end method

.method public static constant(Lvm2/LuaValue;)Lvm2/ast/Exp;
    .registers 2

    .line 32
    new-instance v0, Lvm2/ast/Exp$Constant;

    invoke-direct {v0, p0}, Lvm2/ast/Exp$Constant;-><init>(Lvm2/LuaValue;)V

    return-object v0
.end method

.method public static fieldop(Lvm2/ast/Exp$PrimaryExp;Ljava/lang/String;)Lvm2/ast/Exp$FieldExp;
    .registers 3

    .line 122
    new-instance v0, Lvm2/ast/Exp$FieldExp;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Exp$FieldExp;-><init>(Lvm2/ast/Exp$PrimaryExp;Ljava/lang/String;)V

    return-object v0
.end method

.method public static functionop(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/FuncArgs;)Lvm2/ast/Exp$FuncCall;
    .registers 3

    .line 127
    new-instance v0, Lvm2/ast/Exp$FuncCall;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Exp$FuncCall;-><init>(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/FuncArgs;)V

    return-object v0
.end method

.method public static indexop(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/Exp;)Lvm2/ast/Exp$IndexExp;
    .registers 3

    .line 117
    new-instance v0, Lvm2/ast/Exp$IndexExp;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Exp$IndexExp;-><init>(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/Exp;)V

    return-object v0
.end method

.method public static isrightassoc(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x13

    if-eq p0, v0, :cond_a

    const/16 v0, 0x16

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static methodop(Lvm2/ast/Exp$PrimaryExp;Ljava/lang/String;Lvm2/ast/FuncArgs;)Lvm2/ast/Exp$MethodCall;
    .registers 4

    .line 132
    new-instance v0, Lvm2/ast/Exp$MethodCall;

    invoke-direct {v0, p0, p1, p2}, Lvm2/ast/Exp$MethodCall;-><init>(Lvm2/ast/Exp$PrimaryExp;Ljava/lang/String;Lvm2/ast/FuncArgs;)V

    return-object v0
.end method

.method public static nameprefix(Ljava/lang/String;)Lvm2/ast/Exp$NameExp;
    .registers 2

    .line 107
    new-instance v0, Lvm2/ast/Exp$NameExp;

    invoke-direct {v0, p0}, Lvm2/ast/Exp$NameExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static numberconstant(Ljava/lang/String;)Lvm2/ast/Exp;
    .registers 2

    .line 36
    new-instance v0, Lvm2/ast/Exp$Constant;

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    invoke-virtual {p0}, Lvm2/LuaString;->tonumber()Lvm2/LuaValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lvm2/ast/Exp$Constant;-><init>(Lvm2/LuaValue;)V

    return-object v0
.end method

.method public static parensprefix(Lvm2/ast/Exp;)Lvm2/ast/Exp$ParensExp;
    .registers 2

    .line 112
    new-instance v0, Lvm2/ast/Exp$ParensExp;

    invoke-direct {v0, p0}, Lvm2/ast/Exp$ParensExp;-><init>(Lvm2/ast/Exp;)V

    return-object v0
.end method

.method public static precedence(I)I
    .registers 4

    const/16 v0, 0x19

    if-eq p0, v0, :cond_33

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_33

    packed-switch p0, :pswitch_data_36

    packed-switch p0, :pswitch_data_50

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "precedence of bad op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    const/4 p0, 0x1

    return p0

    :pswitch_27
    const/4 p0, 0x0

    return p0

    :pswitch_29
    const/4 p0, 0x3

    return p0

    :pswitch_2b
    const/4 p0, 0x7

    return p0

    :pswitch_2d
    const/4 p0, 0x5

    return p0

    :pswitch_2f
    const/4 p0, 0x4

    return p0

    :pswitch_31
    const/4 p0, 0x6

    return p0

    :cond_33
    :pswitch_33
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_36
    .packed-switch 0xd
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2b
        :pswitch_31
        :pswitch_31
        :pswitch_29
        :pswitch_33
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x3b
        :pswitch_27
        :pswitch_25
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public static tableconstructor(Lvm2/ast/TableConstructor;)Lvm2/ast/Exp;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static unaryexp(ILvm2/ast/Exp;)Lvm2/ast/Exp;
    .registers 5

    .line 48
    instance-of v0, p1, Lvm2/ast/Exp$BinopExp;

    if-eqz v0, :cond_22

    .line 49
    move-object v0, p1

    check-cast v0, Lvm2/ast/Exp$BinopExp;

    .line 50
    invoke-static {p0}, Lvm2/ast/Exp;->precedence(I)I

    move-result v1

    iget v2, v0, Lvm2/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lvm2/ast/Exp;->precedence(I)I

    move-result v2

    if-le v1, v2, :cond_22

    .line 51
    iget-object p1, v0, Lvm2/ast/Exp$BinopExp;->lhs:Lvm2/ast/Exp;

    invoke-static {p0, p1}, Lvm2/ast/Exp;->unaryexp(ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object p0

    iget p1, v0, Lvm2/ast/Exp$BinopExp;->op:I

    iget-object v0, v0, Lvm2/ast/Exp$BinopExp;->rhs:Lvm2/ast/Exp;

    invoke-static {p0, p1, v0}, Lvm2/ast/Exp;->binaryexp(Lvm2/ast/Exp;ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object p0

    return-object p0

    .line 53
    :cond_22
    new-instance v0, Lvm2/ast/Exp$UnopExp;

    invoke-direct {v0, p0, p1}, Lvm2/ast/Exp$UnopExp;-><init>(ILvm2/ast/Exp;)V

    return-object v0
.end method

.method public static varargs()Lvm2/ast/Exp;
    .registers 1

    .line 40
    new-instance v0, Lvm2/ast/Exp$VarargsExp;

    invoke-direct {v0}, Lvm2/ast/Exp$VarargsExp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lvm2/ast/Visitor;)V
.end method

.method public isfunccall()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isvarargexp()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isvarexp()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class vm2.ast.Exp.AnonFuncDef (vm2.ast.Exp$AnonFuncDef)
.class public Lvm2/ast/Exp$AnonFuncDef;
.super Lvm2/ast/Exp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnonFuncDef"
.end annotation


# instance fields
.field public final body:Lvm2/ast/FuncBody;


# direct methods
.method public constructor <init>(Lvm2/ast/FuncBody;)V
    .registers 2

    .line 304
    invoke-direct {p0}, Lvm2/ast/Exp;-><init>()V

    .line 305
    iput-object p1, p0, Lvm2/ast/Exp$AnonFuncDef;->body:Lvm2/ast/FuncBody;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 309
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$AnonFuncDef;)V

    return-void
.end method

###### Class vm2.ast.Exp.BinopExp (vm2.ast.Exp$BinopExp)
.class public Lvm2/ast/Exp$BinopExp;
.super Lvm2/ast/Exp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinopExp"
.end annotation


# instance fields
.field public final lhs:Lvm2/ast/Exp;

.field public final op:I

.field public final rhs:Lvm2/ast/Exp;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp;ILvm2/ast/Exp;)V
    .registers 4

    .line 291
    invoke-direct {p0}, Lvm2/ast/Exp;-><init>()V

    .line 292
    iput-object p1, p0, Lvm2/ast/Exp$BinopExp;->lhs:Lvm2/ast/Exp;

    .line 293
    iput p2, p0, Lvm2/ast/Exp$BinopExp;->op:I

    .line 294
    iput-object p3, p0, Lvm2/ast/Exp$BinopExp;->rhs:Lvm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 298
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$BinopExp;)V

    return-void
.end method

###### Class vm2.ast.Exp.Constant (vm2.ast.Exp$Constant)
.class public Lvm2/ast/Exp$Constant;
.super Lvm2/ast/Exp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# instance fields
.field public final value:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Lvm2/LuaValue;)V
    .registers 2

    .line 255
    invoke-direct {p0}, Lvm2/ast/Exp;-><init>()V

    .line 256
    iput-object p1, p0, Lvm2/ast/Exp$Constant;->value:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 260
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$Constant;)V

    return-void
.end method

###### Class vm2.ast.Exp.FieldExp (vm2.ast.Exp$FieldExp)
.class public Lvm2/ast/Exp$FieldExp;
.super Lvm2/ast/Exp$VarExp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldExp"
.end annotation


# instance fields
.field public final lhs:Lvm2/ast/Exp$PrimaryExp;

.field public final name:Lvm2/ast/Name;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp$PrimaryExp;Ljava/lang/String;)V
    .registers 3

    .line 191
    invoke-direct {p0}, Lvm2/ast/Exp$VarExp;-><init>()V

    .line 192
    iput-object p1, p0, Lvm2/ast/Exp$FieldExp;->lhs:Lvm2/ast/Exp$PrimaryExp;

    .line 193
    new-instance p1, Lvm2/ast/Name;

    invoke-direct {p1, p2}, Lvm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lvm2/ast/Exp$FieldExp;->name:Lvm2/ast/Name;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 197
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$FieldExp;)V

    return-void
.end method

###### Class vm2.ast.Exp.FuncCall (vm2.ast.Exp$FuncCall)
.class public Lvm2/ast/Exp$FuncCall;
.super Lvm2/ast/Exp$PrimaryExp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncCall"
.end annotation


# instance fields
.field public final args:Lvm2/ast/FuncArgs;

.field public final lhs:Lvm2/ast/Exp$PrimaryExp;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/FuncArgs;)V
    .registers 3

    .line 218
    invoke-direct {p0}, Lvm2/ast/Exp$PrimaryExp;-><init>()V

    .line 219
    iput-object p1, p0, Lvm2/ast/Exp$FuncCall;->lhs:Lvm2/ast/Exp$PrimaryExp;

    .line 220
    iput-object p2, p0, Lvm2/ast/Exp$FuncCall;->args:Lvm2/ast/FuncArgs;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 228
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$FuncCall;)V

    return-void
.end method

.method public isfunccall()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isvarargexp()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class vm2.ast.Exp.IndexExp (vm2.ast.Exp$IndexExp)
.class public Lvm2/ast/Exp$IndexExp;
.super Lvm2/ast/Exp$VarExp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexExp"
.end annotation


# instance fields
.field public final exp:Lvm2/ast/Exp;

.field public final lhs:Lvm2/ast/Exp$PrimaryExp;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/Exp;)V
    .registers 3

    .line 204
    invoke-direct {p0}, Lvm2/ast/Exp$VarExp;-><init>()V

    .line 205
    iput-object p1, p0, Lvm2/ast/Exp$IndexExp;->lhs:Lvm2/ast/Exp$PrimaryExp;

    .line 206
    iput-object p2, p0, Lvm2/ast/Exp$IndexExp;->exp:Lvm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 210
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$IndexExp;)V

    return-void
.end method

###### Class vm2.ast.Exp.MethodCall (vm2.ast.Exp$MethodCall)
.class public Lvm2/ast/Exp$MethodCall;
.super Lvm2/ast/Exp$FuncCall;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodCall"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp$PrimaryExp;Ljava/lang/String;Lvm2/ast/FuncArgs;)V
    .registers 4

    .line 240
    invoke-direct {p0, p1, p3}, Lvm2/ast/Exp$FuncCall;-><init>(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/FuncArgs;)V

    .line 241
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lvm2/ast/Exp$MethodCall;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 249
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$MethodCall;)V

    return-void
.end method

.method public isfunccall()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class vm2.ast.Exp.NameExp (vm2.ast.Exp$NameExp)
.class public Lvm2/ast/Exp$NameExp;
.super Lvm2/ast/Exp$VarExp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameExp"
.end annotation


# instance fields
.field public final name:Lvm2/ast/Name;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 166
    invoke-direct {p0}, Lvm2/ast/Exp$VarExp;-><init>()V

    .line 167
    new-instance v0, Lvm2/ast/Name;

    invoke-direct {v0, p1}, Lvm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lvm2/ast/Exp$NameExp;->name:Lvm2/ast/Name;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 173
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$NameExp;)V

    return-void
.end method

.method public markHasAssignment()V
    .registers 3

    .line 170
    iget-object v0, p0, Lvm2/ast/Exp$NameExp;->name:Lvm2/ast/Name;

    iget-object v0, v0, Lvm2/ast/Name;->variable:Lvm2/ast/Variable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lvm2/ast/Variable;->hasassignments:Z

    return-void
.end method

###### Class vm2.ast.Exp.ParensExp (vm2.ast.Exp$ParensExp)
.class public Lvm2/ast/Exp$ParensExp;
.super Lvm2/ast/Exp$PrimaryExp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParensExp"
.end annotation


# instance fields
.field public final exp:Lvm2/ast/Exp;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp;)V
    .registers 2

    .line 179
    invoke-direct {p0}, Lvm2/ast/Exp$PrimaryExp;-><init>()V

    .line 180
    iput-object p1, p0, Lvm2/ast/Exp$ParensExp;->exp:Lvm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 184
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$ParensExp;)V

    return-void
.end method

###### Class vm2.ast.Exp.PrimaryExp (vm2.ast.Exp$PrimaryExp)
.class public abstract Lvm2/ast/Exp$PrimaryExp;
.super Lvm2/ast/Exp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrimaryExp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Lvm2/ast/Exp;-><init>()V

    return-void
.end method


# virtual methods
.method public isfunccall()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isvarexp()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class vm2.ast.Exp.UnopExp (vm2.ast.Exp$UnopExp)
.class public Lvm2/ast/Exp$UnopExp;
.super Lvm2/ast/Exp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnopExp"
.end annotation


# instance fields
.field public final op:I

.field public final rhs:Lvm2/ast/Exp;


# direct methods
.method public constructor <init>(ILvm2/ast/Exp;)V
    .registers 3

    .line 278
    invoke-direct {p0}, Lvm2/ast/Exp;-><init>()V

    .line 279
    iput p1, p0, Lvm2/ast/Exp$UnopExp;->op:I

    .line 280
    iput-object p2, p0, Lvm2/ast/Exp$UnopExp;->rhs:Lvm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 284
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$UnopExp;)V

    return-void
.end method

###### Class vm2.ast.Exp.VarExp (vm2.ast.Exp$VarExp)
.class public abstract Lvm2/ast/Exp$VarExp;
.super Lvm2/ast/Exp$PrimaryExp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VarExp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Lvm2/ast/Exp$PrimaryExp;-><init>()V

    return-void
.end method


# virtual methods
.method public isvarexp()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public markHasAssignment()V
    .registers 1

    .line 0
    return-void
.end method

###### Class vm2.ast.Exp.VarargsExp (vm2.ast.Exp$VarargsExp)
.class public Lvm2/ast/Exp$VarargsExp;
.super Lvm2/ast/Exp;
.source "Exp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarargsExp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Lvm2/ast/Exp;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 267
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$VarargsExp;)V

    return-void
.end method

.method public isvarargexp()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

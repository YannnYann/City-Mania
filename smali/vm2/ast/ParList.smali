###### Class vm2.ast.ParList (vm2.ast.ParList)
.class public Lvm2/ast/ParList;
.super Lvm2/ast/SyntaxElement;
.source "ParList.java"


# static fields
.field public static final EMPTY_NAMELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_PARLIST:Lvm2/ast/ParList;


# instance fields
.field public final isvararg:Z

.field public final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lvm2/ast/ParList;->EMPTY_NAMELIST:Ljava/util/List;

    .line 29
    new-instance v1, Lvm2/ast/ParList;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lvm2/ast/ParList;-><init>(Ljava/util/List;Z)V

    sput-object v1, Lvm2/ast/ParList;->EMPTY_PARLIST:Lvm2/ast/ParList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;Z)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    .line 35
    iput-object p1, p0, Lvm2/ast/ParList;->names:Ljava/util/List;

    .line 36
    iput-boolean p2, p0, Lvm2/ast/ParList;->isvararg:Z

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 40
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/ParList;)V

    return-void
.end method

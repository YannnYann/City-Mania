###### Class info.flowersoft.theotown.tools.MarkTool (info.flowersoft.theotown.tools.MarkTool)
.class public Linfo/flowersoft/theotown/tools/MarkTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "MarkTool.java"


# instance fields
.field public action:Linfo/flowersoft/theotown/city/components/Tool$ClickListener;

.field public name:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public variant:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->variant:I

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/tools/MarkTool$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/MarkTool$1;-><init>(Linfo/flowersoft/theotown/tools/MarkTool;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->name:Lio/blueflower/stapel2d/util/Getter;

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/MarkTool$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/MarkTool$2;-><init>(Linfo/flowersoft/theotown/tools/MarkTool;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/MarkTool$3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/MarkTool$3;-><init>(Linfo/flowersoft/theotown/tools/MarkTool;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V
    .registers 2

    .line 97
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/MarkTool;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/MarkTool;)V
    .registers 1

    .line 15
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MarkTool;->nextVariant()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/MarkTool;)Z
    .registers 1

    .line 15
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MarkTool;->hasVariants()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 15
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tools/MarkTool;)V
    .registers 1

    .line 15
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MarkTool;->prevVariant()V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 15
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 15
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/tools/MarkTool;)I
    .registers 1

    .line 15
    iget p0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->variant:I

    return p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 15
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 15
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 15
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method private countVariants()I
    .registers 3

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-interface {v0}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->countVariants()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_e
    return v1
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz v0, :cond_9

    .line 131
    invoke-interface {v0}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getIcon()I

    move-result v0

    return v0

    .line 133
    :cond_9
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "Mark"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->name:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final hasVariants()Z
    .registers 3

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->countVariants()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final nextVariant()V
    .registers 3

    .line 120
    iget v0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->variant:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/MarkTool;->countVariants()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->variant:I

    .line 121
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->setVariant(I)V

    return-void
.end method

.method public onClick(IIFFII)V
    .registers 14

    move v1, p1

    .line 138
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/MarkTool;->action:Linfo/flowersoft/theotown/city/components/Tool$ClickListener;

    if-nez p1, :cond_14

    .line 139
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/components/Tool;->click(IIFFII)V

    return-void

    :cond_14
    move p4, p2

    move p3, v1

    move-object p2, p0

    .line 141
    invoke-interface/range {p1 .. p6}, Linfo/flowersoft/theotown/city/components/Tool$ClickListener;->onClick(Linfo/flowersoft/theotown/city/components/Tool;IIII)V

    return-void
.end method

.method public final prevVariant()V
    .registers 3

    .line 115
    iget v0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->variant:I

    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/MarkTool;->countVariants()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/MarkTool;->countVariants()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->variant:I

    .line 116
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->setVariant(I)V

    return-void
.end method

.method public setAction(Linfo/flowersoft/theotown/city/components/Tool$ClickListener;)V
    .registers 2

    .line 125
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/MarkTool;->action:Linfo/flowersoft/theotown/city/components/Tool$ClickListener;

    return-void
.end method

.method public setName(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Linfo/flowersoft/theotown/tools/MarkTool$4;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/tools/MarkTool$4;-><init>(Linfo/flowersoft/theotown/tools/MarkTool;Lio/blueflower/stapel2d/util/Getter;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool;->name:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

###### Class info.flowersoft.theotown.tools.MarkTool.AnonymousClass1 (info.flowersoft.theotown.tools.MarkTool$1)
.class public Linfo/flowersoft/theotown/tools/MarkTool$1;
.super Ljava/lang/Object;
.source "MarkTool.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/MarkTool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/MarkTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/MarkTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 24
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/MarkTool$1;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MarkTool$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, "Marker"

    return-object v0
.end method

###### Class info.flowersoft.theotown.tools.MarkTool.AnonymousClass2 (info.flowersoft.theotown.tools.MarkTool$2)
.class public Linfo/flowersoft/theotown/tools/MarkTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "MarkTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/MarkTool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/MarkTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/MarkTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/MarkTool$2;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 54
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_NEXT_VARIANT:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 34
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "cmdNext"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool$2;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MarkTool;->access$200(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x59d

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool$2;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MarkTool;->access$100(Linfo/flowersoft/theotown/tools/MarkTool;)Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool$2;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MarkTool;->access$000(Linfo/flowersoft/theotown/tools/MarkTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.MarkTool.AnonymousClass3 (info.flowersoft.theotown.tools.MarkTool$3)
.class public Linfo/flowersoft/theotown/tools/MarkTool$3;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "MarkTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/MarkTool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/MarkTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/MarkTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/MarkTool$3;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 86
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_PREVIOUS_VARIANT:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 66
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "cmdPrev"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool$3;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MarkTool;->access$400(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xb99

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool$3;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MarkTool;->access$100(Linfo/flowersoft/theotown/tools/MarkTool;)Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool$3;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MarkTool;->access$300(Linfo/flowersoft/theotown/tools/MarkTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.MarkTool.AnonymousClass4 (info.flowersoft.theotown.tools.MarkTool$4)
.class public Linfo/flowersoft/theotown/tools/MarkTool$4;
.super Ljava/lang/Object;
.source "MarkTool.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/MarkTool;->setName(Lio/blueflower/stapel2d/util/Getter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/MarkTool;

.field public final synthetic val$foreignName:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/MarkTool;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/MarkTool$4;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/MarkTool$4;->val$foreignName:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 146
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MarkTool$4;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 4

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool$4;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    instance-of v1, v1, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;

    if-eqz v1, :cond_75

    .line 150
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MarkTool;->access$500(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x5d4

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MarkTool$4;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/MarkTool;->access$600(Linfo/flowersoft/theotown/tools/MarkTool;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_49

    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    const/4 v2, 0x3

    if-eq v1, v2, :cond_27

    const/4 v1, 0x0

    goto :goto_59

    .line 155
    :cond_27
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MarkTool$4;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/MarkTool;->access$900(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x860

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_59

    .line 154
    :cond_38
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MarkTool$4;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/MarkTool;->access$800(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x134

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_59

    .line 153
    :cond_49
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MarkTool$4;->this$0:Linfo/flowersoft/theotown/tools/MarkTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/MarkTool;->access$700(Linfo/flowersoft/theotown/tools/MarkTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x1c2

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    :goto_59
    if-eqz v1, :cond_74

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_74
    return-object v0

    .line 159
    :cond_75
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MarkTool$4;->val$foreignName:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

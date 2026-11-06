###### Class info.flowersoft.theotown.resources.ShaderRepository (info.flowersoft.theotown.resources.ShaderRepository)
.class public Linfo/flowersoft/theotown/resources/ShaderRepository;
.super Ljava/lang/Object;
.source "ShaderRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;
    }
.end annotation


# static fields
.field public static final constants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static instance:Linfo/flowersoft/theotown/resources/ShaderRepository;


# instance fields
.field public final shaderById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;",
            ">;"
        }
    .end annotation
.end field

.field public final shaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderRepository;->constants:Ljava/util/List;

    .line 24
    const-class v0, Linfo/flowersoft/theotown/drawing/FrameType;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_57

    aget-object v3, v0, v2

    .line 26
    :try_start_13
    sget-object v4, Linfo/flowersoft/theotown/resources/ShaderRepository;->constants:Ljava/util/List;

    new-instance v5, Lio/blueflower/stapel2d/util/Tuple;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TYPE_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_57
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaders:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaderById:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;
    .registers 1

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderRepository;->instance:Linfo/flowersoft/theotown/resources/ShaderRepository;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/resources/ShaderRepository;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/ShaderRepository;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderRepository;->instance:Linfo/flowersoft/theotown/resources/ShaderRepository;

    .line 45
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderRepository;->instance:Linfo/flowersoft/theotown/resources/ShaderRepository;

    return-object v0
.end method


# virtual methods
.method public countShaders()I
    .registers 2

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public dispose()V
    .registers 2

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;
    .registers 4

    if-eqz p2, :cond_11

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 78
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaderById:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    goto :goto_25

    :cond_11
    if-ltz p1, :cond_24

    .line 79
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaders:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_24

    .line 80
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaders:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-eqz p1, :cond_28

    return-object p1

    .line 83
    :cond_28
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaders:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    return-object p1
.end method

.method public final injectConstants(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 61
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderRepository;->constants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/Tuple;

    .line 62
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(\\W|^)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\\W|$)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$2"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_57
    return-object p1
.end method

.method public registerShader(Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    new-instance v0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaders:Ljava/util/List;

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 53
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/resources/ShaderRepository;->injectConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/resources/ShaderRepository;->injectConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_21

    .line 57
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ShaderRepository;->shaderById:Ljava/util/Map;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

###### Class info.flowersoft.theotown.resources.ShaderRepository.ShaderCode (info.flowersoft.theotown.resources.ShaderRepository$ShaderCode)
.class public Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;
.super Ljava/lang/Object;
.source "ShaderRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ShaderRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderCode"
.end annotation


# instance fields
.field public final fragmentCode:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final index:I

.field public final nameGetter:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final vertexCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->index:I

    .line 96
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->id:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->nameGetter:Lio/blueflower/stapel2d/util/Getter;

    .line 98
    iput-object p4, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->vertexCode:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->fragmentCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lio/blueflower/stapel2d/drawing/Shader;
    .registers 4

    .line 123
    new-instance v0, Lio/blueflower/stapel2d/drawing/Shader;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->vertexCode:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->fragmentCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 103
    iget v0, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->nameGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

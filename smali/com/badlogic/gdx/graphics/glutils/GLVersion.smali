###### Class com.badlogic.gdx.graphics.glutils.GLVersion (com.badlogic.gdx.graphics.glutils.GLVersion)
.class public Lcom/badlogic/gdx/graphics/glutils/GLVersion;
.super Ljava/lang/Object;
.source "GLVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public majorVersion:I

.field public minorVersion:I

.field public releaseVersion:I

.field public final rendererString:Ljava/lang/String;

.field public final type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public final vendorString:Ljava/lang/String;

.field public final versionString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Application$ApplicationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "GLVersion"

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->TAG:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_10

    .line 41
    sget-object p1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 42
    :cond_10
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_19

    .line 43
    sget-object p1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 44
    :cond_19
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_22

    .line 45
    sget-object p1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 46
    :cond_22
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_2b

    .line 47
    sget-object p1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 48
    :cond_2b
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_34

    .line 49
    sget-object p1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 51
    :cond_34
    sget-object p1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    .line 53
    :goto_38
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne p1, v0, :cond_44

    .line 55
    const-string p1, "OpenGL ES (\\d(\\.\\d){0,2})"

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 56
    :cond_44
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne p1, v0, :cond_4e

    .line 58
    const-string p1, "WebGL (\\d(\\.\\d){0,2})"

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 59
    :cond_4e
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne p1, v0, :cond_58

    .line 61
    const-string p1, "(\\d(\\.\\d){0,2})"

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_58
    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 64
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 65
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    .line 67
    const-string p3, ""

    move-object p4, p3

    .line 69
    :goto_62
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->versionString:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->vendorString:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->rendererString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final extractVersion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 75
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    const/4 p2, 0x1

    .line 79
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 81
    aget-object v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 82
    array-length v0, p1

    if-ge v0, v1, :cond_28

    move p2, v2

    goto :goto_2e

    :cond_28
    aget-object p2, p1, p2

    invoke-virtual {p0, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result p2

    :goto_2e
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 83
    array-length p2, p1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_35

    goto :goto_3b

    :cond_35
    aget-object p1, p1, v1

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result v2

    :goto_3b
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    return-void

    .line 85
    :cond_3e
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version string: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GLVersion"

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 87
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 88
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    return-void
.end method

.method public getMajorVersion()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    return v0
.end method

.method public final parseInt(Ljava/lang/String;I)I
    .registers 6

    .line 95
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 97
    :catch_5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", assuming: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "libGDX GL"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

###### Class com.badlogic.gdx.graphics.glutils.GLVersion.Type (com.badlogic.gdx.graphics.glutils.GLVersion$Type)
.class public final enum Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
.super Ljava/lang/Enum;
.source "GLVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/GLVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;


# direct methods
.method public static synthetic $values()[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .registers 4

    .line 154
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 155
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "OpenGL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "GLES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "WebGL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    .line 154
    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->$values()[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->$VALUES:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .registers 2

    .line 154
    const-class v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .registers 1

    .line 154
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->$VALUES:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-object v0
.end method

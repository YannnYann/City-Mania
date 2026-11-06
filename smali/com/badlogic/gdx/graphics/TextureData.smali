###### Class com.badlogic.gdx.graphics.TextureData (com.badlogic.gdx.graphics.TextureData)
.class public interface abstract Lcom/badlogic/gdx/graphics/TextureData;
.super Ljava/lang/Object;
.source "TextureData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    }
.end annotation


# virtual methods
.method public abstract consumeCustomData(I)V
.end method

.method public abstract consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
.end method

.method public abstract disposePixmap()Z
.end method

.method public abstract getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
.end method

.method public abstract getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract prepare()V
.end method

.method public abstract useMipMaps()Z
.end method

###### Class com.badlogic.gdx.graphics.TextureData.TextureDataType (com.badlogic.gdx.graphics.TextureData$TextureDataType)
.class public final enum Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
.super Ljava/lang/Enum;
.source "TextureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/TextureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

.field public static final enum Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

.field public static final enum Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;


# direct methods
.method public static synthetic $values()[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .registers 2

    .line 45
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    sget-object v1, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    filled-new-array {v0, v1}, [Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const-string v1, "Pixmap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    new-instance v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const-string v1, "Custom"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    .line 45
    invoke-static {}, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->$values()[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->$VALUES:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .registers 2

    .line 45
    const-class v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .registers 1

    .line 45
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->$VALUES:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

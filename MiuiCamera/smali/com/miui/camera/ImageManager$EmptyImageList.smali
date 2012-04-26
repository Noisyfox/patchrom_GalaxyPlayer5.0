.class Lcom/miui/camera/ImageManager$EmptyImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/miui/camera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyImageList"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/ImageManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/miui/camera/ImageManager$EmptyImageList;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/miui/camera/gallery/IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

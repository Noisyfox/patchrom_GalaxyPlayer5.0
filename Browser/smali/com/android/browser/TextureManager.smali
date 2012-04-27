.class public Lcom/android/browser/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field static sPaint:Landroid/graphics/Paint;

.field static sSrcRect:Landroid/graphics/Rect;

.field static sTextureTmp:Landroid/graphics/Bitmap;

.field static sTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 14
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/browser/TextureManager;->sTextureTmp:Landroid/graphics/Bitmap;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/browser/TextureManager;->sTmpRect:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/browser/TextureManager;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeTextureStrips(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;IIIIIFFF)Ljava/util/Vector;
    .locals 14
    .parameter "gl"
    .parameter "bitmap"
    .parameter "columns"
    .parameter "srcLeft"
    .parameter "srcTop"
    .parameter "srcRight"
    .parameter "srcBottom"
    .parameter "dstLeft"
    .parameter "dstTop"
    .parameter "dstRight"

    .prologue
    .line 24
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 25
    .local v13, v:Ljava/util/Vector;
    new-instance v12, Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/browser/TextureManager;->sTextureTmp:Landroid/graphics/Bitmap;

    invoke-direct {v12, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    .local v12, tmpCanv:Landroid/graphics/Canvas;
    sub-int v2, p5, p3

    div-int v11, v2, p2

    .line 28
    .local v11, srcTileW:I
    move v10, v11

    .line 30
    .local v10, srcTileH:I
    sget-object v2, Lcom/android/browser/TextureManager;->sTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 31
    sget-object v2, Lcom/android/browser/TextureManager;->sTmpRect:Landroid/graphics/Rect;

    const/16 v3, 0x40

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 32
    sget-object v2, Lcom/android/browser/TextureManager;->sTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 33
    sget-object v2, Lcom/android/browser/TextureManager;->sTmpRect:Landroid/graphics/Rect;

    const/16 v3, 0x40

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 35
    sget-object v2, Lcom/android/browser/TextureManager;->sPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 37
    sub-float p9, p9, p7

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 p2, v0

    div-float p9, p9, p2

    .line 38
    .local p9, textW:F
    move/from16 p2, p9

    .line 39
    .local p2, textH:F
    move/from16 v6, p8

    .line 42
    .local v6, textTop:F
    move/from16 p4, p4

    .local p4, y:I
    move/from16 p8, p4

    .end local p4           #y:I
    .local p8, y:I
    :goto_0
    move/from16 v0, p8

    move/from16 v1, p6

    if-ge v0, v1, :cond_3

    .line 43
    move/from16 v5, p7

    .line 44
    .local v5, textLeft:F
    move/from16 p4, p3

    .local p4, x:I
    :goto_1
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_2

    .line 45
    sget-object v2, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    move/from16 v0, p8

    move-object v1, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 46
    sget-object v2, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    add-int v3, p8, v10

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 47
    sget-object v2, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    move/from16 v0, p4

    move-object v1, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 48
    sget-object v2, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    add-int v3, p4, v11

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 50
    const/16 v2, 0x40

    if-ne v11, v2, :cond_1

    const/16 v2, 0x40

    if-ne v10, v2, :cond_1

    .line 51
    sget-object v2, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/browser/TextureManager;->sTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v12, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    :goto_2
    const/high16 v9, 0x3f80

    .line 58
    .local v9, ratio:F
    sget-object v2, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    move/from16 v1, p6

    if-le v0, v1, :cond_0

    .line 59
    sget-object v2, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p6

    int-to-float v2, v2

    int-to-float v3, v10

    div-float/2addr v2, v3

    sub-float/2addr v9, v2

    .line 62
    :cond_0
    add-float v7, v5, p9

    .line 63
    .local v7, textRight:F
    mul-float v2, p2, v9

    sub-float v8, v6, v2

    .line 65
    .local v8, textBottom:F
    new-instance v2, Lcom/android/browser/RotateRenderer$Texture;

    sget-object v4, Lcom/android/browser/TextureManager;->sTextureTmp:Landroid/graphics/Bitmap;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/browser/RotateRenderer$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFFF)V

    .line 68
    .local v2, t:Lcom/android/browser/RotateRenderer$Texture;
    invoke-virtual {v13, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 44
    add-int p4, p4, v11

    add-float v5, v5, p9

    goto :goto_1

    .line 53
    .end local v2           #t:Lcom/android/browser/RotateRenderer$Texture;
    .end local v7           #textRight:F
    .end local v8           #textBottom:F
    .end local v9           #ratio:F
    :cond_1
    sget-object v2, Lcom/android/browser/TextureManager;->sSrcRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/browser/TextureManager;->sTmpRect:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/browser/TextureManager;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 42
    :cond_2
    add-int p4, p8, v10

    .end local p8           #y:I
    .local p4, y:I
    sub-float v6, v6, p2

    move/from16 p8, p4

    .end local p4           #y:I
    .restart local p8       #y:I
    goto :goto_0

    .line 72
    .end local v5           #textLeft:F
    :cond_3
    return-object v13
.end method

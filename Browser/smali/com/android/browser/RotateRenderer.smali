.class public Lcom/android/browser/RotateRenderer;
.super Ljava/lang/Object;
.source "RotateRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/RotateRenderer$Texture;,
        Lcom/android/browser/RotateRenderer$Animator;,
        Lcom/android/browser/RotateRenderer$TextureLoader;
    }
.end annotation


# instance fields
.field private mAnimator:Lcom/android/browser/RotateRenderer$Animator;

.field private mCheckerBoard:Lcom/android/browser/RotateRenderer$Texture;

.field private mScaleToFit:Z

.field private mTextureLoader:Lcom/android/browser/RotateRenderer$TextureLoader;

.field private mTexturesInited:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "scaleToFit"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lcom/android/browser/RotateRenderer;->mScaleToFit:Z

    .line 50
    return-void
.end method

.method public static pow2(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 189
    const/16 v0, 0x10

    .local v0, i:I
    :goto_0
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 190
    if-lt v0, p0, :cond_0

    move v1, v0

    .line 194
    :goto_1
    return v1

    .line 189
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    move v1, p0

    .line 194
    goto :goto_1
.end method


# virtual methods
.method public drawTextures(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/Vector;)V
    .locals 2
    .parameter "gl"
    .parameter "v"

    .prologue
    .line 145
    if-nez p2, :cond_1

    .line 151
    .end local p0
    :cond_0
    return-void

    .line 148
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/browser/RotateRenderer$Texture;

    invoke-virtual {p0, p1}, Lcom/android/browser/RotateRenderer$Texture;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    const/high16 v13, 0x4400

    const/high16 v12, 0x4280

    const/4 v1, 0x0

    .line 105
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 107
    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 116
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 122
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 123
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 125
    const/high16 v3, 0x40a0

    const/high16 v8, 0x3f80

    move-object v0, p1

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 127
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 128
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 130
    iget-boolean v0, p0, Lcom/android/browser/RotateRenderer;->mTexturesInited:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/RotateRenderer;->mAnimator:Lcom/android/browser/RotateRenderer$Animator;

    if-eqz v0, :cond_2

    .line 131
    const/high16 v10, -0x3c00

    .local v10, x:F
    :goto_0
    cmpl-float v0, v13, v10

    if-lez v0, :cond_1

    .line 132
    const/high16 v11, -0x3c00

    .local v11, y:F
    :goto_1
    cmpl-float v0, v13, v11

    if-lez v0, :cond_0

    .line 133
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 134
    invoke-interface {p1, v10, v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 135
    iget-object v0, p0, Lcom/android/browser/RotateRenderer;->mCheckerBoard:Lcom/android/browser/RotateRenderer$Texture;

    invoke-virtual {v0, p1}, Lcom/android/browser/RotateRenderer$Texture;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 136
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 132
    add-float/2addr v11, v12

    goto :goto_1

    .line 131
    :cond_0
    add-float/2addr v10, v12

    goto :goto_0

    .line 140
    .end local v11           #y:F
    :cond_1
    iget-object v0, p0, Lcom/android/browser/RotateRenderer;->mAnimator:Lcom/android/browser/RotateRenderer$Animator;

    invoke-interface {v0, p0, p1}, Lcom/android/browser/RotateRenderer$Animator;->onAnimationStart(Lcom/android/browser/RotateRenderer;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 142
    .end local v10           #x:F
    :cond_2
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface is CHANGED ----------------------- width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 157
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 158
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 159
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    div-int/lit8 v0, p2, 0x2

    int-to-float v2, v0

    neg-int v0, p3

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    div-int/lit8 v0, p3, 0x2

    int-to-float v4, v0

    const/high16 v5, -0x3ee0

    const/high16 v6, 0x4120

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 161
    iget-object v0, p0, Lcom/android/browser/RotateRenderer;->mTextureLoader:Lcom/android/browser/RotateRenderer$TextureLoader;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/browser/RotateRenderer;->mTextureLoader:Lcom/android/browser/RotateRenderer$TextureLoader;

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    div-int/lit8 v1, p2, 0x2

    int-to-float v6, v1

    neg-int v1, p3

    div-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    div-int/lit8 v1, p3, 0x2

    int-to-float v8, v1

    iget-boolean v9, p0, Lcom/android/browser/RotateRenderer;->mScaleToFit:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v9}, Lcom/android/browser/RotateRenderer$TextureLoader;->initTextures(Lcom/android/browser/RotateRenderer;Ljavax/microedition/khronos/opengles/GL10;IIFFFFZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/RotateRenderer;->mTexturesInited:Z

    .line 164
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 21
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 55
    const/16 v19, -0x6

    .line 56
    .local v19, prio:I
    invoke-static/range {v19 .. v19}, Landroid/os/Process;->setThreadPriority(I)V

    .line 58
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Surface is created -----------------------"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    const/16 v5, 0xbd0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 70
    const/16 v5, 0xc50

    const/16 v6, 0x1101

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 73
    const/16 v5, 0x1d01

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 74
    const/16 v5, 0xb71

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 75
    const/16 v5, 0xde1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 77
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x2

    const/4 v7, 0x2

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 80
    .local v17, bitmap:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    .local v18, matrix:Landroid/graphics/Matrix;
    const/high16 v5, 0x4100

    const/high16 v6, 0x4100

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 83
    new-instance v20, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 84
    .local v20, shader:Landroid/graphics/BitmapShader;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 86
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 87
    .local v9, paint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 90
    const/16 v5, 0x40

    const/16 v6, 0x40

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 92
    .local v12, checker:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v4, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x4280

    const/high16 v8, 0x4280

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    new-instance v10, Lcom/android/browser/RotateRenderer$Texture;

    const/4 v13, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v14, v5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v15, v5

    const/16 v16, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/browser/RotateRenderer$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFF)V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/RotateRenderer;->mCheckerBoard:Lcom/android/browser/RotateRenderer$Texture;

    .line 96
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    return-void

    .line 77
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xcct 0xcct 0xcct 0xfft
        0xcct 0xcct 0xcct 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public setAnimator(Lcom/android/browser/RotateRenderer$Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/browser/RotateRenderer;->mAnimator:Lcom/android/browser/RotateRenderer$Animator;

    .line 186
    return-void
.end method

.method public setTextureLoader(Lcom/android/browser/RotateRenderer$TextureLoader;)V
    .locals 0
    .parameter "tl"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/browser/RotateRenderer;->mTextureLoader:Lcom/android/browser/RotateRenderer$TextureLoader;

    .line 182
    return-void
.end method

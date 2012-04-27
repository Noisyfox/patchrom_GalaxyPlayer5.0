.class Lcom/android/browser/BrowserRotateManager;
.super Lcom/android/browser/RotateManager;
.source "BrowserRotateManager.java"


# instance fields
.field private mAniEnd:J

.field private mAniNumEndFrames:I

.field private mAniPeriod:J

.field private mAniStart:J

.field mFromTranslateX:F

.field mFromTranslateY:F

.field private mInAnimation:Z

.field mLandscapeStatus:Landroid/graphics/Bitmap;

.field mLandscapeStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

.field mLandscapeTitle:Landroid/graphics/Bitmap;

.field mLandscapeTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

.field mMaxScale:F

.field mModelView:[F

.field mPortraitStatus:Landroid/graphics/Bitmap;

.field mPortraitStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

.field mPortraitTitle:Landroid/graphics/Bitmap;

.field mPortraitTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

.field mProjection:[F

.field mScreenCapture:Landroid/graphics/Bitmap;

.field mScreenTextureObjCoord:[F

.field mScreenTextureWinCoord:[F

.field mScreenTextures:Ljava/util/Vector;

.field mTitleTextureWinCoord:[F

.field mTitleVisibleH:I

.field mToScale:F

.field mToTranslateX:F

.field mToTranslateY:F

.field mViewport:[I


# direct methods
.method static synthetic access$002(Lcom/android/browser/BrowserRotateManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/android/browser/BrowserRotateManager;->mAniPeriod:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserRotateManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/browser/BrowserRotateManager;->mInAnimation:Z

    return p1
.end method

.method private getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V
    .locals 3
    .parameter "gl"
    .parameter "mode"
    .parameter "mat"

    .prologue
    .line 313
    move-object v0, p1

    check-cast v0, Lcom/android/browser/MatrixTrackingGL;

    move-object v1, v0

    .line 314
    .local v1, gl2:Lcom/android/browser/MatrixTrackingGL;
    invoke-virtual {v1, p2}, Lcom/android/browser/MatrixTrackingGL;->glMatrixMode(I)V

    .line 315
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/android/browser/MatrixTrackingGL;->getMatrix([FI)V

    .line 316
    return-void
.end method

.method private projectCaptureXY(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 13
    .parameter "gl"
    .parameter "scale"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 319
    const/16 v0, 0x1701

    iget-object v1, p0, Lcom/android/browser/BrowserRotateManager;->mProjection:[F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/browser/BrowserRotateManager;->getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    .line 320
    const/16 v0, 0x1700

    iget-object v1, p0, Lcom/android/browser/BrowserRotateManager;->mModelView:[F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/browser/BrowserRotateManager;->getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    .line 321
    iget-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    aget v1, v1, v11

    iget-object v2, p0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    aget v2, v2, v12

    iget-object v3, p0, Lcom/android/browser/BrowserRotateManager;->mModelView:[F

    iget-object v5, p0, Lcom/android/browser/BrowserRotateManager;->mProjection:[F

    iget-object v7, p0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    iget-object v9, p0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureWinCoord:[F

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 325
    iget-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    aget v1, v1, v11

    iget v2, p0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    aget v2, v2, v12

    iget-object v3, p0, Lcom/android/browser/BrowserRotateManager;->mModelView:[F

    iget-object v5, p0, Lcom/android/browser/BrowserRotateManager;->mProjection:[F

    iget-object v7, p0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    iget-object v9, p0, Lcom/android/browser/BrowserRotateManager;->mTitleTextureWinCoord:[F

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 329
    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mScreenCapture:Landroid/graphics/Bitmap;

    .line 334
    iput-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitle:Landroid/graphics/Bitmap;

    .line 335
    iput-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitle:Landroid/graphics/Bitmap;

    .line 336
    iput-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatus:Landroid/graphics/Bitmap;

    .line 337
    iput-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatus:Landroid/graphics/Bitmap;

    .line 338
    iput-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mScreenTextures:Ljava/util/Vector;

    .line 339
    return-void
.end method

.method protected initRotate(Z)V
    .locals 8
    .parameter "scaleToFit"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 143
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/browser/BrowserRotateManager;->mAniStart:J

    .line 144
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/browser/BrowserRotateManager;->mAniNumEndFrames:I

    .line 145
    iput v6, p0, Lcom/android/browser/BrowserRotateManager;->mFromTranslateX:F

    .line 146
    iput v6, p0, Lcom/android/browser/BrowserRotateManager;->mFromTranslateY:F

    .line 148
    iget v4, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    iget v5, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    if-ne v4, v5, :cond_2

    .line 149
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p0, Lcom/android/browser/BrowserRotateManager;->mMaxScale:F

    iget v5, p0, Lcom/android/browser/RotateManager;->mScrPortraitH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/RotateManager;->mScrPortraitW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_0
    iput v4, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    .line 150
    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitW:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    mul-float v0, v4, v5

    .line 151
    .local v0, newX:F
    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 152
    .local v2, wantX:F
    sub-float v4, v0, v2

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/browser/BrowserRotateManager;->mToTranslateX:F

    .line 153
    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitH:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/browser/RotateManager;->mStatusBarHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    mul-float v1, v4, v5

    .line 154
    .local v1, newY:F
    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitW:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/browser/RotateManager;->mStatusBarHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 155
    .local v3, wantY:F
    sub-float v4, v3, v1

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/browser/BrowserRotateManager;->mToTranslateY:F

    .line 167
    :goto_1
    return-void

    .end local v0           #newX:F
    .end local v1           #newY:F
    .end local v2           #wantX:F
    .end local v3           #wantY:F
    :cond_1
    move v4, v7

    .line 149
    goto :goto_0

    .line 157
    :cond_2
    if-eqz p1, :cond_3

    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitW:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/browser/RotateManager;->mScrPortraitH:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_2
    iput v4, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    .line 158
    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    mul-float v0, v4, v5

    .line 159
    .restart local v0       #newX:F
    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitW:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 160
    .restart local v2       #wantX:F
    sub-float v4, v0, v2

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/browser/BrowserRotateManager;->mToTranslateX:F

    .line 161
    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitW:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/browser/RotateManager;->mStatusBarHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    mul-float v1, v4, v5

    .line 162
    .restart local v1       #newY:F
    iget v4, p0, Lcom/android/browser/RotateManager;->mScrPortraitH:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/browser/RotateManager;->mStatusBarHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 163
    .restart local v3       #wantY:F
    sub-float v4, v3, v1

    iget v5, p0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/browser/BrowserRotateManager;->mToTranslateY:F

    goto :goto_1

    .end local v0           #newX:F
    .end local v1           #newY:F
    .end local v2           #wantX:F
    .end local v3           #wantY:F
    :cond_3
    move v4, v7

    .line 157
    goto :goto_2
.end method

.method public initTextures(Lcom/android/browser/RotateRenderer;Ljavax/microedition/khronos/opengles/GL10;IIFFFFZ)Z
    .locals 24
    .parameter "renderer"
    .parameter "gl"
    .parameter "viewPortW"
    .parameter "viewPortH"
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "scaleToFit"

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/RotateManager;->mGLAcknowledgedCleanup:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 78
    const/4 v3, 0x0

    .line 134
    :goto_0
    return v3

    .line 81
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenCapture:Landroid/graphics/Bitmap;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 82
    const/4 v3, 0x0

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserRotateManager;->now()J

    move-result-wide v22

    .line 86
    .local v22, started:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    move-object v3, v0

    const/4 v4, 0x2

    aput p3, v3, v4

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    move-object v3, v0

    const/4 v4, 0x3

    aput p4, v3, v4

    .line 99
    const/4 v6, 0x0

    .line 100
    .local v6, srcLeft:I
    const/4 v7, 0x0

    .line 101
    .local v7, srcTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenCapture:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 102
    .local v8, srcRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenCapture:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 104
    .local v9, srcBottom:I
    move/from16 v10, p5

    .line 105
    .local v10, dstLeft:F
    move/from16 v11, p8

    .line 106
    .local v11, dstTop:F
    move/from16 v12, p6

    .line 108
    .local v12, dstRight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    move v3, v0

    add-int/2addr v7, v3

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateManager;->mStatusBarHeight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    move v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v11, v3

    .line 111
    sub-int v21, v8, v6

    .line 112
    .local v21, srcW:I
    sub-int v20, v9, v7

    .line 114
    .local v20, srcH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenCapture:Landroid/graphics/Bitmap;

    move-object v4, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    const/4 v3, 0x4

    move v5, v3

    :goto_1
    move-object/from16 v3, p2

    invoke-static/range {v3 .. v12}, Lcom/android/browser/TextureManager;->makeTextureStrips(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;IIIIIFFF)Ljava/util/Vector;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateManager;->mScreenTextures:Ljava/util/Vector;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    move-object v3, v0

    const/4 v4, 0x0

    aput v10, v3, v4

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    move-object v3, v0

    const/4 v4, 0x1

    aput v11, v3, v4

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureObjCoord:[F

    move-object v3, v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 122
    new-instance v13, Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitle:Landroid/graphics/Bitmap;

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitle:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitle:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v14, p2

    invoke-direct/range {v13 .. v19}, Lcom/android/browser/RotateRenderer$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFF)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateManager;->mPortraitTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    .line 124
    new-instance v13, Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitle:Landroid/graphics/Bitmap;

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitle:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitle:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v14, p2

    invoke-direct/range {v13 .. v19}, Lcom/android/browser/RotateRenderer$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFF)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    .line 127
    new-instance v13, Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatus:Landroid/graphics/Bitmap;

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatus:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatus:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v14, p2

    invoke-direct/range {v13 .. v19}, Lcom/android/browser/RotateRenderer$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFF)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateManager;->mPortraitStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    .line 129
    new-instance v13, Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatus:Landroid/graphics/Bitmap;

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatus:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatus:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v14, p2

    invoke-direct/range {v13 .. v19}, Lcom/android/browser/RotateRenderer$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFF)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserRotateManager;->now()J

    move-result-wide v3

    sub-long v3, v3, v22

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/RotateManager;->mElapsedTextureLoad:J

    .line 133
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserRotateManager;->initRotate(Z)V

    .line 134
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 114
    :cond_2
    const/4 v3, 0x6

    move v5, v3

    goto/16 :goto_1
.end method

.method public onAnimationStart(Lcom/android/browser/RotateRenderer;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 27
    .parameter "renderer"
    .parameter "gl"

    .prologue
    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super {v0, v1}, Lcom/android/browser/RotateManager;->onAnimationStart(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 195
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/RotateManager;->mGLAcknowledgedCleanup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-wide/16 v12, 0x0

    .line 200
    .local v12, now:J
    const-wide/16 v6, 0x0

    .line 201
    .local v6, elapsed:J
    const/4 v14, 0x0

    .line 203
    .local v14, ratio:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/BrowserRotateManager;->mInAnimation:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 204
    const-wide/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniStart:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-lez v23, :cond_2

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/BrowserRotateManager;->mAniStart:J

    .line 206
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniStart:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniPeriod:J

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/BrowserRotateManager;->mAniEnd:J

    .line 209
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 210
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniStart:J

    move-wide/from16 v23, v0

    sub-long v6, v12, v23

    .line 212
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniPeriod:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    move-wide v0, v6

    long-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2710

    invoke-static/range {v23 .. v25}, Lcom/android/browser/Kinetic;->getScrollPosDecelFromBottom(III)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x461c4000

    div-float v14, v23, v24

    .line 213
    const/high16 v23, 0x3f80

    cmpg-float v23, v23, v14

    if-gez v23, :cond_6

    .line 214
    const/high16 v14, 0x3f80

    .line 229
    :cond_3
    :goto_1
    const/16 v19, 0x0

    .line 230
    .local v19, translateX:F
    const/16 v20, 0x0

    .line 231
    .local v20, translateY:F
    const/4 v8, 0x0

    .line 232
    .local v8, fromAngle:F
    const/high16 v9, 0x3f80

    .line 233
    .local v9, fromScale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 234
    const/16 v23, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/high16 v23, 0x42b4

    move/from16 v16, v23

    .line 235
    .local v16, toAngle:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object v11, v0

    .line 236
    .local v11, fromTitle:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v18, v0

    .line 237
    .local v18, toTitle:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object v10, v0

    .line 238
    .local v10, fromStatus:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v17, v0

    .line 259
    .local v17, toStatus:Lcom/android/browser/RotateRenderer$Texture;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mToScale:F

    move/from16 v23, v0

    mul-float v23, v23, v14

    const/high16 v24, 0x3f80

    sub-float v24, v24, v14

    mul-float v24, v24, v9

    add-float v15, v23, v24

    .line 260
    .local v15, scale:F
    mul-float v23, v14, v16

    const/high16 v24, 0x3f80

    sub-float v24, v24, v14

    mul-float v24, v24, v8

    add-float v5, v23, v24

    .line 261
    .local v5, angle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mToTranslateX:F

    move/from16 v23, v0

    mul-float v23, v23, v14

    const/high16 v24, 0x3f80

    sub-float v24, v24, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mFromTranslateX:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v19, v23, v24

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mToTranslateY:F

    move/from16 v23, v0

    mul-float v23, v23, v14

    const/high16 v24, 0x3f80

    sub-float v24, v24, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mFromTranslateY:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v20, v23, v24

    .line 264
    invoke-interface/range {p2 .. p2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 265
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f80

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 266
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move v1, v15

    move v2, v15

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 267
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenTextures:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/RotateRenderer;->drawTextures(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/Vector;)V

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserRotateManager;->projectCaptureXY(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 273
    invoke-interface/range {p2 .. p2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    move/from16 v23, v0

    if-lez v23, :cond_4

    .line 276
    invoke-interface/range {p2 .. p2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureWinCoord:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v21, v23, v24

    .line 278
    .local v21, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mScreenTextureWinCoord:[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v22, v23, v24

    .line 279
    .local v22, y:F
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 280
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f80

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 281
    const/high16 v23, 0x3f80

    sub-float v23, v23, v14

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/RotateRenderer$Texture;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 282
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/RotateRenderer$Texture;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 283
    invoke-interface/range {p2 .. p2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 286
    .end local v21           #x:F
    .end local v22           #y:F
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mTitleTextureWinCoord:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v21, v23, v24

    .line 288
    .restart local v21       #x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mTitleTextureWinCoord:[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mViewport:[I

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v22, v23, v24

    .line 289
    .restart local v22       #y:F
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 290
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f80

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 291
    const/high16 v23, 0x3f80

    sub-float v23, v23, v14

    move-object v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/RotateRenderer$Texture;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 292
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/RotateRenderer$Texture;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 293
    invoke-interface/range {p2 .. p2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/BrowserRotateManager;->mInAnimation:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniEnd:J

    move-wide/from16 v23, v0

    cmp-long v23, v12, v23

    if-ltz v23, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniNumEndFrames:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserRotateManager;->mAniNumEndFrames:I

    .line 299
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/BrowserRotateManager;->mInAnimation:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniNumEndFrames:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 301
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/BrowserRotateManager;->mInAnimation:Z

    .line 304
    new-instance v23, Lcom/android/browser/BrowserRotateManager$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserRotateManager$2;-><init>(Lcom/android/browser/BrowserRotateManager;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserRotateManager;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 215
    .end local v5           #angle:F
    .end local v8           #fromAngle:F
    .end local v9           #fromScale:F
    .end local v10           #fromStatus:Lcom/android/browser/RotateRenderer$Texture;
    .end local v11           #fromTitle:Lcom/android/browser/RotateRenderer$Texture;
    .end local v15           #scale:F
    .end local v16           #toAngle:F
    .end local v17           #toStatus:Lcom/android/browser/RotateRenderer$Texture;
    .end local v18           #toTitle:Lcom/android/browser/RotateRenderer$Texture;
    .end local v19           #translateX:F
    .end local v20           #translateY:F
    .end local v21           #x:F
    .end local v22           #y:F
    :cond_6
    const/16 v23, 0x0

    cmpl-float v23, v23, v14

    if-lez v23, :cond_3

    .line 216
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 218
    :cond_7
    const-wide/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/BrowserRotateManager;->mAniStart:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-gtz v23, :cond_3

    .line 219
    const/high16 v14, 0x3f80

    goto/16 :goto_1

    .line 234
    .restart local v8       #fromAngle:F
    .restart local v9       #fromScale:F
    .restart local v19       #translateX:F
    .restart local v20       #translateY:F
    :cond_8
    const/high16 v23, -0x3d4c

    move/from16 v16, v23

    goto/16 :goto_2

    .line 239
    :cond_9
    const/16 v23, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 240
    const/16 v23, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const/high16 v23, -0x3d4c

    move/from16 v16, v23

    .line 241
    .restart local v16       #toAngle:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object v11, v0

    .line 242
    .restart local v11       #fromTitle:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v18, v0

    .line 243
    .restart local v18       #toTitle:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object v10, v0

    .line 244
    .restart local v10       #fromStatus:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v17, v0

    .restart local v17       #toStatus:Lcom/android/browser/RotateRenderer$Texture;
    goto/16 :goto_3

    .line 240
    .end local v10           #fromStatus:Lcom/android/browser/RotateRenderer$Texture;
    .end local v11           #fromTitle:Lcom/android/browser/RotateRenderer$Texture;
    .end local v16           #toAngle:F
    .end local v17           #toStatus:Lcom/android/browser/RotateRenderer$Texture;
    .end local v18           #toTitle:Lcom/android/browser/RotateRenderer$Texture;
    :cond_a
    const/high16 v23, 0x42b4

    move/from16 v16, v23

    goto :goto_4

    .line 245
    :cond_b
    const/16 v23, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 246
    const/16 v23, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/high16 v23, 0x42b4

    move/from16 v16, v23

    .line 247
    .restart local v16       #toAngle:F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object v11, v0

    .line 248
    .restart local v11       #fromTitle:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v18, v0

    .line 249
    .restart local v18       #toTitle:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object v10, v0

    .line 250
    .restart local v10       #fromStatus:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v17, v0

    .restart local v17       #toStatus:Lcom/android/browser/RotateRenderer$Texture;
    goto/16 :goto_3

    .line 246
    .end local v10           #fromStatus:Lcom/android/browser/RotateRenderer$Texture;
    .end local v11           #fromTitle:Lcom/android/browser/RotateRenderer$Texture;
    .end local v16           #toAngle:F
    .end local v17           #toStatus:Lcom/android/browser/RotateRenderer$Texture;
    .end local v18           #toTitle:Lcom/android/browser/RotateRenderer$Texture;
    :cond_c
    const/high16 v23, -0x3d4c

    move/from16 v16, v23

    goto :goto_5

    .line 252
    :cond_d
    const/16 v23, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/high16 v23, -0x3d4c

    move/from16 v16, v23

    .line 253
    .restart local v16       #toAngle:F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object v11, v0

    .line 254
    .restart local v11       #fromTitle:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitleTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v18, v0

    .line 255
    .restart local v18       #toTitle:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object v10, v0

    .line 256
    .restart local v10       #fromStatus:Lcom/android/browser/RotateRenderer$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatusTexture:Lcom/android/browser/RotateRenderer$Texture;

    move-object/from16 v17, v0

    .restart local v17       #toStatus:Lcom/android/browser/RotateRenderer$Texture;
    goto/16 :goto_3

    .line 252
    .end local v10           #fromStatus:Lcom/android/browser/RotateRenderer$Texture;
    .end local v11           #fromTitle:Lcom/android/browser/RotateRenderer$Texture;
    .end local v16           #toAngle:F
    .end local v17           #toStatus:Lcom/android/browser/RotateRenderer$Texture;
    .end local v18           #toTitle:Lcom/android/browser/RotateRenderer$Texture;
    :cond_e
    const/high16 v23, 0x42b4

    move/from16 v16, v23

    goto :goto_6
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lcom/android/browser/RotateManager;->onPause()V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserRotateManager;->mInAnimation:Z

    .line 345
    return-void
.end method

.method public setOrientation(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZF)Z
    .locals 4
    .parameter "orient"
    .parameter "screenCapture"
    .parameter "portraitTitle"
    .parameter "landscapeTitle"
    .parameter "portraitStatus"
    .parameter "landscapeStatus"
    .parameter "titleVisibleH"
    .parameter "scaleToFit"
    .parameter "maxScale"

    .prologue
    const-string v3, "scaleToFit"

    const-string v2, "BrowserRotateManager"

    .line 41
    iput-object p2, p0, Lcom/android/browser/BrowserRotateManager;->mScreenCapture:Landroid/graphics/Bitmap;

    .line 42
    iput-object p3, p0, Lcom/android/browser/BrowserRotateManager;->mPortraitTitle:Landroid/graphics/Bitmap;

    .line 43
    iput-object p4, p0, Lcom/android/browser/BrowserRotateManager;->mLandscapeTitle:Landroid/graphics/Bitmap;

    .line 44
    iput-object p5, p0, Lcom/android/browser/BrowserRotateManager;->mPortraitStatus:Landroid/graphics/Bitmap;

    .line 45
    iput-object p6, p0, Lcom/android/browser/BrowserRotateManager;->mLandscapeStatus:Landroid/graphics/Bitmap;

    .line 46
    iput p7, p0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    .line 47
    iput p9, p0, Lcom/android/browser/BrowserRotateManager;->mMaxScale:F

    .line 48
    const-string v0, "BrowserRotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:orient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTitleVisibleH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BrowserRotateManager;->mTitleVisibleH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "BrowserRotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:mMaxScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BrowserRotateManager;->mMaxScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scaleToFit"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "BrowserRotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/RotateManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1, p8}, Lcom/android/browser/RotateManager;->setOrientation(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "BrowserRotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation is true:orient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scaleToFit"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "BrowserRotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation is true:mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/RotateManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget v0, p0, Lcom/android/browser/RotateManager;->mState:I

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserRotateManager;->mScreenCapture:Landroid/graphics/Bitmap;

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected startRotate(J)V
    .locals 2
    .parameter "period"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/browser/BrowserRotateManager;->checkThread()V

    .line 172
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    new-instance v1, Lcom/android/browser/BrowserRotateManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/browser/BrowserRotateManager$1;-><init>(Lcom/android/browser/BrowserRotateManager;J)V

    invoke-virtual {v0, v1}, Lcom/android/browser/RotateView3D;->queueEvent(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

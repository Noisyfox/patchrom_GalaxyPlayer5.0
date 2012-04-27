.class Lcom/android/browser/RotateRenderer$Texture;
.super Ljava/lang/Object;
.source "RotateRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/RotateRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Texture"
.end annotation


# instance fields
.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mTexBuffer:Ljava/nio/FloatBuffer;

.field public mTextureID:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFF)V
    .locals 8
    .parameter "gl"
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 208
    const/high16 v7, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/browser/RotateRenderer$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFFF)V

    .line 209
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFFFF)V
    .locals 22
    .parameter "gl"
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "ratio"

    .prologue
    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v10, 0x0

    .line 213
    .local v10, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/browser/RotateRenderer;->pow2(I)I

    move-result v15

    .line 214
    .local v15, texW:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/browser/RotateRenderer;->pow2(I)I

    move-result v13

    .line 215
    .local v13, texH:I
    const/high16 v14, 0x3f80

    .line 216
    .local v14, texRight:F
    const/high16 v12, 0x3f80

    .line 218
    .local v12, texBottom:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move v0, v15

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move v0, v13

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 219
    :cond_0
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v0, v15

    move v1, v13

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 220
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .local v5, canv:Landroid/graphics/Canvas;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v14, v19, v20

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v13

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v12, v19, v20

    .line 226
    move-object/from16 p2, v10

    .line 229
    .end local v5           #canv:Landroid/graphics/Canvas;
    :cond_1
    mul-float v12, v12, p7

    .line 231
    const/16 v19, 0x30

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 232
    .local v16, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/RotateRenderer$Texture;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 235
    const/16 v19, 0x20

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 236
    .local v11, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/RotateRenderer$Texture;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 239
    const/16 v19, 0x8

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 240
    .local v8, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/RotateRenderer$Texture;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 243
    const/16 v19, 0xc

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object v6, v0

    const/16 v19, 0x0

    aput p3, v6, v19

    const/16 v19, 0x1

    aput p6, v6, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    aput v20, v6, v19

    const/16 v19, 0x3

    aput p3, v6, v19

    const/16 v19, 0x4

    aput p4, v6, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput v20, v6, v19

    const/16 v19, 0x6

    aput p5, v6, v19

    const/16 v19, 0x7

    aput p6, v6, v19

    const/16 v19, 0x8

    const/16 v20, 0x0

    aput v20, v6, v19

    const/16 v19, 0x9

    aput p5, v6, v19

    const/16 v19, 0xa

    aput p4, v6, v19

    const/16 v19, 0xb

    const/16 v20, 0x0

    aput v20, v6, v19

    .line 251
    .local v6, coords:[F
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v19, 0x4

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 252
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    const/16 v19, 0x3

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/RotateRenderer$Texture;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    mul-int/lit8 v20, v7, 0x3

    add-int v20, v20, v9

    aget v20, v6, v20

    invoke-virtual/range {v19 .. v20}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 252
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 251
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 257
    .end local v9           #j:I
    :cond_3
    const/4 v7, 0x0

    :goto_2
    const/16 v19, 0x4

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 258
    mul-int/lit8 v19, v7, 0x3

    add-int/lit8 v19, v19, 0x0

    aget v17, v6, v19

    .line 259
    .local v17, x:F
    mul-int/lit8 v19, v7, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v18, v6, v19

    .line 261
    .local v18, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/RotateRenderer$Texture;->mTexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    cmpl-float v20, v17, p3

    if-nez v20, :cond_4

    const/16 v20, 0x0

    :goto_3
    invoke-virtual/range {v19 .. v20}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/RotateRenderer$Texture;->mTexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    cmpl-float v20, v18, p4

    if-nez v20, :cond_5

    const/16 v20, 0x0

    :goto_4
    invoke-virtual/range {v19 .. v20}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 257
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move/from16 v20, v14

    .line 261
    goto :goto_3

    :cond_5
    move/from16 v20, v12

    .line 262
    goto :goto_4

    .line 265
    .end local v17           #x:F
    .end local v18           #y:F
    :cond_6
    const/4 v7, 0x0

    :goto_5
    const/16 v19, 0x4

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/RotateRenderer$Texture;->mIndexBuffer:Ljava/nio/ShortBuffer;

    move-object/from16 v19, v0

    move v0, v7

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 265
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 269
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/RotateRenderer$Texture;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/RotateRenderer$Texture;->mTexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/RotateRenderer$Texture;->mIndexBuffer:Ljava/nio/ShortBuffer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    invoke-virtual/range {p0 .. p2}, Lcom/android/browser/RotateRenderer$Texture;->createTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 274
    if-eqz v10, :cond_8

    .line 275
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    :cond_8
    return-void
.end method


# virtual methods
.method createTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "gl"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x1

    const v3, 0x47012f00

    const v2, 0x46180400

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 285
    new-array v0, v1, [I

    .line 286
    .local v0, textures:[I
    invoke-interface {p1, v1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 288
    aget v1, v0, v5

    iput v1, p0, Lcom/android/browser/RotateRenderer$Texture;->mTextureID:I

    .line 289
    iget v1, p0, Lcom/android/browser/RotateRenderer$Texture;->mTextureID:I

    invoke-interface {p1, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 291
    const/16 v1, 0x2801

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 293
    const/16 v1, 0x2800

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 297
    const/16 v1, 0x2802

    invoke-interface {p1, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 299
    const/16 v1, 0x2803

    invoke-interface {p1, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 302
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 305
    invoke-static {v4, v5, p2, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 306
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 309
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/RotateRenderer$Texture;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 310
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 7
    .parameter "gl"
    .parameter "alpha"

    .prologue
    const/16 v6, 0x1406

    const/16 v3, 0xde1

    const/16 v5, 0xbe2

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    .line 313
    cmpg-float v0, p2, v4

    if-gez v0, :cond_0

    .line 314
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 315
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 316
    invoke-interface {p1, v4, v4, v4, p2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 318
    :cond_0
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 319
    iget v0, p0, Lcom/android/browser/RotateRenderer$Texture;->mTextureID:I

    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 321
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 322
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/browser/RotateRenderer$Texture;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v6, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 323
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 324
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/browser/RotateRenderer$Texture;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v6, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 325
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/browser/RotateRenderer$Texture;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 328
    cmpg-float v0, p2, v4

    if-gez v0, :cond_1

    .line 329
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 330
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 332
    :cond_1
    return-void
.end method

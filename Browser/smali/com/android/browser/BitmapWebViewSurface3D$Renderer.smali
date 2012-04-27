.class Lcom/android/browser/BitmapWebViewSurface3D$Renderer;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BitmapWebViewSurface3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Renderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebViewSurface3D;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D;)V
    .locals 0
    .parameter

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 5
    .parameter "op"

    .prologue
    const-string v4, ": glError "

    .line 2116
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 2117
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2120
    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "glAttachShader"

    .line 2085
    const v4, 0x8b31

    invoke-direct {p0, v4, p1}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 2086
    .local v3, vertexShader:I
    if-nez v3, :cond_0

    move v4, v5

    .line 2111
    :goto_0
    return v4

    .line 2090
    :cond_0
    const v4, 0x8b30

    invoke-direct {p0, v4, p2}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 2091
    .local v1, pixelShader:I
    if-nez v1, :cond_1

    move v4, v5

    .line 2092
    goto :goto_0

    .line 2095
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 2096
    .local v2, program:I
    if-eqz v2, :cond_2

    .line 2097
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2098
    const-string v4, "glAttachShader"

    invoke-direct {p0, v7}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 2099
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2100
    const-string v4, "glAttachShader"

    invoke-direct {p0, v7}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 2101
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 2102
    new-array v0, v6, [I

    .line 2103
    .local v0, linkStatus:[I
    const v4, 0x8b82

    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 2104
    aget v4, v0, v5

    if-eq v4, v6, :cond_2

    .line 2105
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 2108
    const/4 v2, 0x0

    .end local v0           #linkStatus:[I
    :cond_2
    move v4, v2

    .line 2111
    goto :goto_0
.end method

.method private loadBgTexture()V
    .locals 9

    .prologue
    const/16 v8, 0x2901

    const/high16 v7, 0x4618

    const/4 v6, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 2236
    new-array v1, v6, [I

    .line 2238
    .local v1, textures:[I
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1700(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2240
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1700(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    aput v2, v1, v4

    .line 2241
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2245
    :cond_0
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2247
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    aget v3, v1, v4

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I
    invoke-static {v2, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1702(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 2248
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1700(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2250
    const/16 v2, 0x2801

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2252
    const/16 v2, 0x2800

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2256
    const/16 v2, 0x2802

    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2258
    const/16 v2, 0x2803

    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2262
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->getBGBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2263
    .local v0, bgBitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBgBitmapW:I

    .line 2264
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBgBitmapH:I

    .line 2266
    invoke-static {v5, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 2269
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2271
    return-void
.end method

.method private loadCheckerBoardTexture()V
    .locals 9

    .prologue
    const/16 v8, 0x2901

    const/high16 v7, 0x4618

    const/4 v6, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 2277
    new-array v1, v6, [I

    .line 2279
    .local v1, textures:[I
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2281
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    aput v2, v1, v4

    .line 2282
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2286
    :cond_0
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2288
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    aget v3, v1, v4

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I
    invoke-static {v2, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1802(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 2289
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2291
    const/16 v2, 0x2801

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2293
    const/16 v2, 0x2800

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2297
    const/16 v2, 0x2802

    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2299
    const/16 v2, 0x2803

    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2302
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->getCheckerBoardBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2304
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 2307
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2309
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 2068
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 2069
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 2070
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 2071
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 2072
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 2073
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 2074
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 2075
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 2078
    const/4 v1, 0x0

    .line 2081
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadTitleBarTexture(I)V
    .locals 10
    .parameter "width"

    .prologue
    const v9, 0x812f

    const v8, 0x46180400

    const/4 v7, 0x1

    const/16 v6, 0xde1

    const/4 v5, 0x0

    .line 2171
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 2172
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2173
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, v3, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v3

    sget-object v4, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2186
    new-array v1, v7, [I

    .line 2187
    .local v1, textures:[I
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2189
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    aput v2, v1, v5

    .line 2190
    invoke-static {v7, v1, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2193
    :cond_1
    invoke-static {v7, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2197
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    aget v3, v1, v5

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I
    invoke-static {v2, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1602(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 2198
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I
    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2202
    const/16 v2, 0x2801

    invoke-static {v6, v2, v8}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2205
    const/16 v2, 0x2800

    invoke-static {v6, v2, v8}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2211
    const/16 v2, 0x2802

    invoke-static {v6, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2214
    const/16 v2, 0x2803

    invoke-static {v6, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2223
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v5, v2, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 2231
    .end local v1           #textures:[I
    :goto_0
    return-void

    .line 2176
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2178
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTitleBarTextureBitmap:  fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 2180
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2181
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, v3, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/browser/BitmapWebView;->setState(I)V

    goto :goto_0
.end method

.method private loadWebViewTexture()V
    .locals 8

    .prologue
    const v7, 0x812f

    const v6, 0x46180400

    const/16 v5, 0x60

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 2124
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aget v1, v1, v4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2126
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2131
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 2135
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aget v1, v1, v0

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2138
    const/16 v1, 0x2801

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2140
    const/16 v1, 0x2800

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2144
    const/16 v1, 0x2802

    invoke-static {v3, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2146
    const/16 v1, 0x2803

    invoke-static {v3, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2155
    :cond_1
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 36
    .parameter "gl"

    .prologue
    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mIsFixingBlackScreen:I

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebView;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1732
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsFixingBlackScreen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    iget v8, v8, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    float-to-int v8, v8

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1734
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1735
    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget v6, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mIsFixingBlackScreen:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mIsFixingBlackScreen:I

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mIsFixingBlackScreen:I

    if-lez v5, :cond_0

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->requestRender()V

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mIsFixingBlackScreen:I

    .line 1744
    sget-boolean v5, Lcom/android/browser/BitmapWebViewSurface3D;->DEBUG_PERFORMANCE:Z

    if-eqz v5, :cond_3

    .line 1745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 1746
    .local v24, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v5}, Lcom/android/browser/WebGLAnimator;->getTouchDownMs()J

    move-result-wide v14

    .line 1747
    .local v14, down:J
    const-string v19, ""

    .line 1748
    .local v19, first:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mLastFrameTime:J

    cmp-long v5, v5, v14

    if-gez v5, :cond_2

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iput-wide v14, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mLastFrameTime:J

    .line 1750
    const-string v19, " first"

    .line 1752
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mLastFrameTime:J

    sub-long v17, v24, v5

    .line 1753
    .local v17, elapsed:J
    const-string v5, "GL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDrawFrame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->frameChars(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    move-wide/from16 v0, v24

    move-object v2, v5

    iput-wide v0, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mLastFrameTime:J

    .line 1757
    .end local v14           #down:J
    .end local v17           #elapsed:J
    .end local v19           #first:Ljava/lang/String;
    .end local v24           #now:J
    :cond_3
    const/4 v13, 0x0

    .line 1758
    .local v13, animatorActive:Z
    sget-boolean v5, Lcom/android/browser/BitmapWebViewSurface3D;->OPTIMIZE_EVENTS:Z

    if-eqz v5, :cond_4

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->applyAnimator()Z

    move-result v13

    .line 1760
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    iget v8, v8, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    float-to-int v8, v8

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1765
    :cond_4
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1766
    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v14, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    monitor-enter v14

    .line 1770
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mDrawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;

    move-object/from16 v16, v0

    .line 1771
    .local v16, drawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMyViewRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)Landroid/graphics/Rect;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebView;->getDrawInfo(Lcom/android/browser/BitmapWebView$DrawInfo;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1772
    monitor-exit v14

    goto/16 :goto_0

    .line 1935
    .end local v16           #drawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;
    :catchall_0
    move-exception v5

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1780
    .restart local v16       #drawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureScaleX:F

    move/from16 v29, v0

    .line 1781
    .local v29, sx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureScaleY:F

    move/from16 v30, v0

    .line 1784
    .local v30, sy:F
    const/high16 v5, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v6, v6, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v7, v7, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v7, v7, v29

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v7, v7, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v27, v5, v6

    .line 1785
    .local v27, scrolldx:F
    const/high16 v5, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v6, v6, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v7, v7, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v7, v7, v30

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v7, v7, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v28, v5, v6

    .line 1789
    .local v28, scrolldy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1793
    sget-boolean v5, Lcom/android/browser/BitmapWebViewSurface3D;->OPTIMIZE_EVENTS:Z

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_6

    .line 1794
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    .line 1795
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 1798
    :cond_6
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    move v5, v0

    if-eqz v5, :cond_7

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v8}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$700(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F
    invoke-static {v8}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->drawBg()V

    .line 1806
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    iget v8, v8, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLY:F

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object v0, v5

    move v1, v6

    move/from16 v2, v29

    move/from16 v3, v30

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v7, v7, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v8, v8, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    const/high16 v9, 0x3f80

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, v28

    neg-float v0, v0

    move v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v27

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v8}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$700(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F
    invoke-static {v8}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1816
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    move v5, v0

    if-nez v5, :cond_8

    .line 1819
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->drawCheckerBoard()V

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    .line 1830
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 1831
    .local v31, texRect:Landroid/graphics/Rect;
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 1832
    .local v26, prevTexRect:Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->setEmpty()V

    .line 1834
    new-instance v20, Landroid/graphics/RegionIterator;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1835
    .local v20, iter:Landroid/graphics/RegionIterator;
    :cond_9
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1838
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->drawRect(Landroid/graphics/Rect;)V

    .line 1840
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1844
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    iget v5, v5, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    if-eqz v5, :cond_b

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    iget v6, v6, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    iget v7, v7, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    invoke-virtual {v5, v6, v7}, Lcom/android/browser/BitmapWebViewSurface3D;->drawEdges(II)V

    .line 1850
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-boolean v5, v5, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v33, v0

    .line 1854
    .local v33, top:F
    const/16 v21, 0x0

    .line 1855
    .local v21, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    move v0, v5

    int-to-float v0, v0

    move/from16 v34, v0

    .line 1856
    .local v34, zoomLeft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v0, v5

    int-to-float v0, v0

    move/from16 v35, v0

    .line 1857
    .local v35, zoomTop:F
    const/high16 v5, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v6}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v7, v7, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v32, v5, v6

    .line 1860
    .local v32, titleheight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    sub-float v6, v21, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v7, v7, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v21

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    sub-float v6, v33, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v7, v7, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v33

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v6}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v6

    const/4 v7, 0x4

    aget v6, v6, v7

    mul-float v6, v6, v33

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v6}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v6

    const/16 v7, 0xc

    aget v6, v6, v7

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    add-float v22, v5, v6

    .line 1867
    .local v22, newleft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v6}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v6

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float v6, v6, v33

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v6}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v6

    const/16 v7, 0xd

    aget v6, v6, v7

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    add-float v23, v5, v6

    .line 1870
    .local v23, newtop:F
    const/high16 v5, 0x3f80

    cmpg-float v5, v23, v5

    if-gtz v5, :cond_d

    .line 1872
    const/high16 v5, 0x3f80

    sub-float v5, v5, v32

    cmpg-float v5, v23, v5

    if-gez v5, :cond_c

    .line 1873
    const/high16 v5, 0x3f80

    sub-float v23, v5, v32

    .line 1882
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    sub-float v8, v23, v8

    add-float v8, v8, v32

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F
    invoke-static {v8}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$700(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F
    invoke-static {v8}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->drawTitleBar()V

    .line 1903
    .end local v21           #left:F
    .end local v22           #newleft:F
    .end local v23           #newtop:F
    .end local v32           #titleheight:F
    .end local v33           #top:F
    .end local v34           #zoomLeft:F
    .end local v35           #zoomTop:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v5}, Lcom/android/browser/WebGLAnimator;->isShowScrollbar()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1904
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->drawScrollbar()V

    .line 1911
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/browser/BitmapWebView;->setDrawFrameFlag(Z)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebView;->onDrawFinished()V

    .line 1915
    sget-boolean v5, Lcom/android/browser/BitmapWebViewSurface3D;->OPTIMIZE_EVENTS:Z

    if-eqz v5, :cond_10

    .line 1916
    if-eqz v13, :cond_11

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v7}, Lcom/android/browser/WebGLAnimator;->getScrollX()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v8}, Lcom/android/browser/WebGLAnimator;->getScrollY()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v9}, Lcom/android/browser/WebGLAnimator;->getZoomCenterX()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v10}, Lcom/android/browser/WebGLAnimator;->getZoomCenterY()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v11, v0

    iget-object v11, v11, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v11}, Lcom/android/browser/WebGLAnimator;->getZoomScale()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v12, v0

    iget v12, v12, Lcom/android/browser/BitmapWebViewSurface3D;->mDrawFrameSerial:I

    invoke-virtual/range {v5 .. v12}, Landroid/webkit/WebView;->updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIFFFI)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    #calls: Lcom/android/browser/BitmapWebViewSurface3D;->copyToViewRoot()V
    invoke-static {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v5}, Lcom/android/browser/WebGLAnimator;->onDrawFrameEnd()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BitmapWebViewSurface3D;->requestRender()V

    .line 1933
    :cond_10
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget v6, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mDrawFrameSerial:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mDrawFrameSerial:I

    .line 1935
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1936
    sget-boolean v5, Lcom/android/browser/BitmapWebViewSurface3D;->DEBUG_PERFORMANCE:Z

    if-eqz v5, :cond_0

    const-string v5, "GL"

    const-string v6, "onDrawFrame done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1930
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v5}, Lcom/android/browser/WebGLAnimator;->onDrawFrameEnd()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1941
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapWebViewSurface3D.onSurfaceChanged: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 1946
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v8, v0, Lcom/android/browser/BitmapWebView;->mSystemStatusBarHeight:I

    .line 1947
    .local v8, statusHeight:I
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapWebViewSurface3D.onSurfaceChanged viewport = 0, 0, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v4, p3, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    sub-int v0, p3, v8

    invoke-static {v1, v1, p2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1949
    sub-int/2addr p3, v8

    .line 1950
    int-to-float v0, p2

    int-to-float v2, p3

    div-float v3, v0, v2

    .line 1952
    .local v3, ratio:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProjMatrix:[F
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$900(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v0

    neg-float v2, v3

    const/high16 v4, -0x4080

    const/high16 v5, 0x3f80

    const/high16 v6, 0x4040

    const/high16 v7, 0x40e0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 1958
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    int-to-float v1, p2

    iput v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    .line 1959
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    int-to-float v1, p3

    iput v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    .line 1963
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestSurfaceChanged()V

    .line 1969
    invoke-direct {p0, p2}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadTitleBarTexture(I)V

    .line 1970
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1971
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1974
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    new-instance v1, Lcom/android/browser/BitmapWebViewSurface3D$Renderer$1;

    invoke-direct {v1, p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer$1;-><init>(Lcom/android/browser/BitmapWebViewSurface3D$Renderer;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->queueEvent(Ljava/lang/Runnable;)V

    .line 1980
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->fixBlackScreen()V

    .line 1981
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 1985
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onSurfaceCreated"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 1990
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nattribute vec4 aColor;\nvarying vec4 vTextureCoord;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = uTextureMatrix * aTextureCoord;\n  vColor=aColor;\n}\n"

    const-string v4, "precision lowp float;\nvarying vec4 vTextureCoord;\nvarying vec4 vColor;\nuniform lowp sampler2D sTexture;\nuniform int uUseColor;\nvoid main() {\nif(uUseColor == 1)\n{\n gl_FragColor = vColor;\n}\nelse\n{\n gl_FragColor = texture2D(sTexture, vTextureCoord.st);\n}\n}\n"

    invoke-direct {p0, v3, v4}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1002(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1991
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2065
    :goto_0
    return-void

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "aPosition"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I
    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1102(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1995
    const-string v0, "glGetAttribLocation aPosition"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1996
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1100(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1997
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "aTextureCoord"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I
    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1202(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 2000
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 2001
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1200(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2002
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2005
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "aColor"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I
    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1302(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 2006
    const-string v0, "glGetAttribLocation maColorHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 2007
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1300(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 2008
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for maColorHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2011
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "uMVPMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I
    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$602(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 2012
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 2013
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 2014
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2017
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "uUseColor"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I
    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1402(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 2018
    const-string v0, "glGetUniformLocation muUseColorHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1400(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 2020
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uUseColor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2023
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I
    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "uTextureMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I
    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$702(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 2024
    const-string v0, "glGetUniformLocation uTextureMatrix"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$700(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 2026
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uTextureMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2030
    :cond_6
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mVMatrix:[F
    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1500(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v0

    const/high16 v4, -0x3f60

    const/high16 v9, 0x3f80

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 2034
    invoke-direct {p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadCheckerBoardTexture()V

    .line 2035
    invoke-direct {p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadBgTexture()V

    .line 2036
    invoke-direct {p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadWebViewTexture()V

    .line 2039
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    if-lez v0, :cond_7

    .line 2043
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, v3, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    #calls: Lcom/android/browser/BitmapWebViewSurface3D;->reloadExtraWebViewTextureGL(II)V
    invoke-static {v0, v2, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$200(Lcom/android/browser/BitmapWebViewSurface3D;II)V

    .line 2045
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    #calls: Lcom/android/browser/BitmapWebViewSurface3D;->reloadExtraWebViewTextureGL(II)V
    invoke-static {v0, v2, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->access$200(Lcom/android/browser/BitmapWebViewSurface3D;II)V

    .line 2048
    :cond_7
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mGLThread:Ljava/lang/Thread;

    .line 2049
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 2050
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 2051
    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 2052
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0
.end method

.class public Lcom/android/browser/BitmapWebViewSurface3D;
.super Landroid/opengl/GLSurfaceView;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Lcom/android/browser/BitmapWebView$Surface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BitmapWebViewSurface3D$Renderer;,
        Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;,
        Lcom/android/browser/BitmapWebViewSurface3D$MyTile;
    }
.end annotation


# static fields
.field static final DEBUG_PERFORMANCE:Z

.field private static LOGTAG:Ljava/lang/String;

.field static final OPTIMIZE_EVENTS:Z


# instance fields
.field mAnimator:Lcom/android/browser/WebGLAnimator;

.field mBgBitmapH:I

.field mBgBitmapW:I

.field private mBgTextureID:I

.field private mBitmapBuffer:Ljava/nio/ByteBuffer;

.field mBitmapWebView:Lcom/android/browser/BitmapWebView;

.field mBmpPartialRects:[[Landroid/graphics/Rect;

.field private mCheckerBoardTextureID:I

.field private mColorVertices:Ljava/nio/FloatBuffer;

.field private final mColorVerticesData:[F

.field mCompressedTexEnable:Z

.field mContext:Landroid/content/Context;

.field mDrawFrameSerial:I

.field mDrawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;

.field mEdgeAnimationDuration:J

.field mEdgeAnimationStartTime:J

.field private final mFragmentShader:Ljava/lang/String;

.field mGLThread:Ljava/lang/Thread;

.field mHeight:F

.field mIsFixingBlackScreen:I

.field mLastFrameTime:J

.field private mMMatrix:[F

.field private mMVPMatrix:[F

.field private mMyViewRect:Landroid/graphics/Rect;

.field mOnUnloadExtraTextures:Z

.field private mProgram:I

.field private mProjMatrix:[F

.field mRenderer:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

.field private mTMatrix:[F

.field mTexPartialRects:[[Landroid/graphics/Rect;

.field mTexTiles:[[I

.field mTextureIDs:[I

.field private mTextureMatrix:[F

.field mTextureScaleX:F

.field mTextureScaleY:F

.field private mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

.field mTitleBarBitmapGeneration:J

.field private mTitleBarTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field mUpdatingTitleBar:Z

.field private mVMatrix:[F

.field private final mVertexShader:Ljava/lang/String;

.field mWebView:Landroid/webkit/WebView;

.field mWidth:F

.field mZoomCenterGLX:F

.field mZoomCenterGLY:F

.field mZoomRegionLeft:I

.field mZoomRegionTop:I

.field private maColorHandle:I

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muTextureMatrixHandle:I

.field private muUseColorHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    sput-boolean v0, Lcom/android/browser/BitmapWebViewSurface3D;->OPTIMIZE_EVENTS:Z

    .line 63
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_PERFORMANCE:Z

    sput-boolean v0, Lcom/android/browser/BitmapWebViewSurface3D;->DEBUG_PERFORMANCE:Z

    .line 122
    const-string v0, "BitmapWebView"

    sput-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;Lcom/android/browser/WebGLAnimator;)V
    .locals 7
    .parameter "context"
    .parameter "bitmapWebView"
    .parameter "animator"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x10

    .line 257
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 67
    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    .line 79
    const/16 v1, 0x1c

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    .line 92
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nattribute vec4 aColor;\nvarying vec4 vTextureCoord;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = uTextureMatrix * aTextureCoord;\n  vColor=aColor;\n}\n"

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mVertexShader:Ljava/lang/String;

    .line 106
    const-string v1, "precision lowp float;\nvarying vec4 vTextureCoord;\nvarying vec4 vColor;\nuniform lowp sampler2D sTexture;\nuniform int uUseColor;\nvoid main() {\nif(uUseColor == 1)\n{\n gl_FragColor = vColor;\n}\nelse\n{\n gl_FragColor = texture2D(sTexture, vTextureCoord.st);\n}\n}\n"

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mFragmentShader:Ljava/lang/String;

    .line 129
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F

    .line 130
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F

    .line 131
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mProjMatrix:[F

    .line 132
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mMMatrix:[F

    .line 133
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mVMatrix:[F

    .line 134
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTMatrix:[F

    .line 137
    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I

    .line 138
    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    .line 139
    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I

    .line 147
    iput v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLX:F

    iput v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLY:F

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mGLThread:Ljava/lang/Thread;

    .line 169
    iput-boolean v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCompressedTexEnable:Z

    .line 659
    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mEdgeAnimationDuration:J

    .line 660
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mEdgeAnimationStartTime:J

    .line 1497
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarBitmapGeneration:J

    .line 1723
    iput v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mDrawFrameSerial:I

    .line 1724
    new-instance v1, Lcom/android/browser/BitmapWebView$DrawInfo;

    invoke-direct {v1}, Lcom/android/browser/BitmapWebView$DrawInfo;-><init>()V

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mDrawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;

    .line 258
    iput-object p3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    .line 259
    iput-object p2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 260
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mContext:Landroid/content/Context;

    .line 264
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 266
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 267
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    .line 274
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mMaxExtraTexNum:I

    add-int/lit8 v1, v1, 0x60

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mMaxExtraTexNum:I

    add-int/lit8 v1, v1, 0x60

    if-ge v0, v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aput v3, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-instance v1, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;I)V

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    .line 280
    new-instance v1, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    invoke-direct {v1, p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mRenderer:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    .line 282
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->setEGLContextClientVersion(I)V

    .line 283
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mRenderer:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 284
    invoke-virtual {p0, v4}, Lcom/android/browser/BitmapWebViewSurface3D;->setRenderMode(I)V

    .line 289
    invoke-static {v6}, Lcom/android/browser/BitmapWebViewSurface3D;->setNoTranspWhenZOrderOnTop(Z)V

    .line 290
    invoke-virtual {p0, v6}, Lcom/android/browser/BitmapWebViewSurface3D;->setZOrderOnTop(Z)V

    .line 292
    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 79
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BitmapWebViewSurface3D;)Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/browser/BitmapWebViewSurface3D;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mVMatrix:[F

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/browser/BitmapWebViewSurface3D;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BitmapWebViewSurface3D;->reloadExtraWebViewTextureGL(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/BitmapWebViewSurface3D;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mMyViewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BitmapWebViewSurface3D;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/browser/BitmapWebViewSurface3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->copyToViewRoot()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/BitmapWebViewSurface3D;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mProjMatrix:[F

    return-object v0
.end method

.method private copyToViewRoot()V
    .locals 2

    .prologue
    .line 2343
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2344
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2345
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRoot;

    .line 2346
    .local v1, viewRoot:Landroid/view/ViewRoot;
    if-eqz v1, :cond_0

    .line 2348
    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->copySurfaceTo(Landroid/view/ViewRoot;)V

    .line 2351
    .end local v1           #viewRoot:Landroid/view/ViewRoot;
    :cond_0
    return-void
.end method

.method private reloadExtraWebViewTextureGL(II)V
    .locals 13
    .parameter "tilenum"
    .parameter "from"

    .prologue
    const/16 v2, 0x1907

    const/16 v3, 0x100

    const/4 v1, 0x0

    const/high16 v12, 0x4618

    const/16 v0, 0xde1

    .line 436
    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 440
    .local v9, count:I
    new-array v11, v9, [I

    .line 442
    .local v11, ids:[I
    if-gez p1, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    add-int/lit8 v1, p2, 0x60

    sub-int/2addr v1, v9

    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    add-int/lit8 v5, p2, 0x60

    invoke-static {v9, v4, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 452
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    add-int/lit8 v10, p2, 0x60

    .local v10, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    add-int/lit8 v4, p2, 0x60

    add-int/2addr v4, v9

    if-ge v10, v4, :cond_0

    .line 454
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aget v4, v4, v10

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 457
    const/16 v4, 0x2801

    invoke-static {v0, v4, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 460
    const/16 v4, 0x2800

    invoke-static {v0, v4, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 465
    const/16 v4, 0x2802

    const/16 v5, 0x2901

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 468
    const/16 v4, 0x2803

    const/16 v5, 0x2901

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 472
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const v7, 0x8363

    const/4 v8, 0x0

    move v4, v3

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 452
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method


# virtual methods
.method public applyAnimator()Z
    .locals 19

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/WebGLAnimator;->onDrawFrameStart()Z

    move-result v10

    .line 684
    .local v10, animatorActive:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/WebGLAnimator;->needEdgeAnimation()I

    move-result v15

    .line 687
    .local v15, edges:I
    if-ltz v15, :cond_0

    .line 688
    if-nez v15, :cond_3

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebViewSurface3D;->doAbortEdgeAnimation()V

    .line 704
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v15, v0

    .end local v15           #edges:I
    monitor-enter v15

    .line 705
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/WebGLAnimator;->getScrollX()I

    move-result v4

    .line 706
    .local v4, scrollX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/WebGLAnimator;->getScrollY()I

    move-result v5

    .line 707
    .local v5, scrollY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/WebGLAnimator;->getZoomCenterX()F

    move-result v11

    .line 708
    .local v11, centerX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/WebGLAnimator;->getZoomCenterY()F

    move-result v12

    .line 709
    .local v12, centerY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/WebGLAnimator;->getZoomScale()F

    move-result v18

    .line 711
    .local v18, scale:F
    const v3, 0x3c23d70a

    cmpg-float v3, v18, v3

    if-gez v3, :cond_1

    .line 712
    const v18, 0x3c23d70a

    .line 717
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    float-to-int v14, v3

    .line 718
    .local v14, contW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    float-to-int v13, v3

    .line 719
    .local v13, contH:I
    int-to-float v3, v4

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    div-float v7, v7, v18

    sub-float/2addr v6, v7

    mul-float/2addr v6, v11

    add-float/2addr v3, v6

    float-to-int v6, v3

    .line 720
    .local v6, viewRectLeft:I
    int-to-float v3, v5

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    div-float v8, v8, v18

    sub-float/2addr v7, v8

    mul-float/2addr v7, v12

    add-float/2addr v3, v7

    float-to-int v7, v3

    .line 721
    .local v7, viewRectTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float v3, v3, v18

    float-to-int v3, v3

    add-int/2addr v3, v6

    add-int/lit8 v8, v3, 0x2

    .line 722
    .local v8, viewRectRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float v3, v3, v18

    float-to-int v3, v3

    add-int/2addr v3, v7

    add-int/lit8 v9, v3, 0x2

    .line 726
    .local v9, viewRectBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mMyViewRect:Landroid/graphics/Rect;

    move-object v3, v0

    if-nez v3, :cond_2

    .line 727
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mMyViewRect:Landroid/graphics/Rect;

    .line 729
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mMyViewRect:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/browser/BitmapWebView;->updateViewRectGL(IIIIII)V

    .line 736
    mul-float v3, v11, v18

    sub-float/2addr v3, v11

    move v0, v3

    float-to-int v0, v0

    move/from16 v16, v0

    .line 737
    .local v16, offsetX:I
    mul-float v3, v12, v18

    sub-float/2addr v3, v12

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 739
    .local v17, offsetY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    move/from16 v0, v18

    move-object v1, v3

    iput v0, v1, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 741
    int-to-float v3, v4

    mul-float v3, v3, v18

    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v6, v0

    .end local v6           #viewRectLeft:I
    iget v6, v6, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    move v1, v3

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLX:F

    .line 742
    int-to-float v3, v5

    mul-float v3, v3, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v6, v0

    iget v6, v6, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    move v1, v3

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLY:F

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    .end local v4           #scrollX:I
    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    .line 750
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v10

    .line 691
    .end local v5           #scrollY:I
    .end local v7           #viewRectTop:I
    .end local v8           #viewRectRight:I
    .end local v9           #viewRectBottom:I
    .end local v11           #centerX:F
    .end local v12           #centerY:F
    .end local v13           #contH:I
    .end local v14           #contW:I
    .end local v16           #offsetX:I
    .end local v17           #offsetY:I
    .end local v18           #scale:F
    .restart local v15       #edges:I
    :cond_3
    if-lez v15, :cond_4

    const/16 v3, 0x10

    if-ge v15, v3, :cond_4

    .line 693
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->doStartEdgeAnimation(I)V

    goto/16 :goto_0

    .line 694
    :cond_4
    const/16 v3, 0x10

    if-ne v15, v3, :cond_0

    goto/16 :goto_0

    .line 751
    .end local v15           #edges:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method clipTileTexture(FFFF[FLandroid/graphics/Rect;)V
    .locals 18
    .parameter "verLeft"
    .parameter "verTop"
    .parameter "glTileW"
    .parameter "glTileH"
    .parameter "verticesData"
    .parameter "partialRect"

    .prologue
    .line 1445
    if-nez p6, :cond_0

    .line 1495
    :goto_0
    return-void

    .line 1449
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v16, v0

    const/high16 v3, 0x4380

    .line 1450
    .local v3, TILE_WIDTH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v16, v0

    const/high16 v2, 0x4380

    .line 1454
    .local v2, TILE_HEIGHT:F
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v9, v0

    .line 1455
    .local v9, validLeft:F
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v11, v0

    .line 1456
    .local v11, validTop:F
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v10, v0

    .line 1457
    .local v10, validRight:F
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v8, v0

    .line 1460
    .local v8, validBottom:F
    div-float v5, v9, v3

    .line 1461
    .local v5, texValidLeft:F
    div-float v6, v10, v3

    .line 1462
    .local v6, texValidRight:F
    div-float v7, v11, v2

    .line 1463
    .local v7, texValidTop:F
    div-float v4, v8, v2

    .line 1466
    .local v4, texValidBottom:F
    mul-float v16, v9, p3

    div-float v16, v16, v3

    add-float v13, p1, v16

    .line 1467
    .local v13, verValidLeft:F
    mul-float v16, v10, p3

    div-float v16, v16, v3

    add-float v14, p1, v16

    .line 1468
    .local v14, verValidRight:F
    mul-float v16, v11, p4

    div-float v16, v16, v2

    sub-float v15, p2, v16

    .line 1469
    .local v15, verValidTop:F
    mul-float v16, v8, p4

    div-float v16, v16, v2

    sub-float v12, p2, v16

    .line 1473
    .local v12, verValidBottom:F
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1474
    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1475
    const/16 v16, 0x3

    const/16 v17, 0x3

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1476
    const/16 v16, 0x4

    const/16 v17, 0x4

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1479
    const/16 v16, 0x5

    const/16 v17, 0x5

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1480
    const/16 v16, 0x6

    const/16 v17, 0x6

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1481
    const/16 v16, 0x8

    const/16 v17, 0x8

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1482
    const/16 v16, 0x9

    const/16 v17, 0x9

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1485
    const/16 v16, 0xa

    const/16 v17, 0xa

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1486
    const/16 v16, 0xb

    const/16 v17, 0xb

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1487
    const/16 v16, 0xd

    const/16 v17, 0xd

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1488
    const/16 v16, 0xe

    const/16 v17, 0xe

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1491
    const/16 v16, 0xf

    const/16 v17, 0xf

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1492
    const/16 v16, 0x10

    const/16 v17, 0x10

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1493
    const/16 v16, 0x12

    const/16 v17, 0x12

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    aput v17, p5, v16

    .line 1494
    const/16 v16, 0x13

    const/16 v17, 0x13

    aget v17, p5, v17

    move/from16 v0, v17

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    aput v17, p5, v16

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->destroy()V

    .line 820
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->ignoreUpdate3DSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2403
    sget-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    const-string v1, "Ignored dispatchDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :goto_0
    return-void

    .line 2406
    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method doAbortEdgeAnimation()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->getEdgeAnimationStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mEdgeAnimationStartTime:J

    .line 667
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->resetEdgeAnimationStatus()V

    .line 669
    :cond_0
    return-void
.end method

.method doStartEdgeAnimation(I)V
    .locals 2
    .parameter "edges"

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->doAbortEdgeAnimation()V

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mEdgeAnimationStartTime:J

    .line 675
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0, p1}, Lcom/android/browser/WebGLAnimator;->onEdgeAnimationStart(I)V

    .line 676
    return-void
.end method

.method public draw(FFF)V
    .locals 2
    .parameter "zoomcx"
    .parameter "zoomcy"
    .parameter "scale"

    .prologue
    .line 761
    sget-boolean v0, Lcom/android/browser/BitmapWebViewSurface3D;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->requestRender()V

    .line 776
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLX:F

    .line 769
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLY:F

    .line 770
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    .line 771
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    float-to-int v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    .line 774
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->requestRender()V

    goto :goto_0
.end method

.method drawBg()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1135
    const/high16 v7, -0x4080

    .line 1136
    .local v7, glLeft:F
    const/high16 v9, 0x3f80

    .line 1137
    .local v9, glTop:F
    const/high16 v8, 0x3f80

    .line 1138
    .local v8, glRight:F
    const/high16 v6, -0x4080

    .line 1139
    .local v6, glBottom:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgBitmapW:I

    int-to-float v2, v2

    div-float v11, v0, v2

    .line 1140
    .local v11, texRight:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgBitmapH:I

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 1143
    .local v10, texBottom:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v7, v0, v3

    .line 1144
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x1

    aput v9, v0, v2

    .line 1145
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v4, v0, v1

    .line 1146
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v4, v0, v12

    .line 1148
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v8, v0, v13

    .line 1149
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x6

    aput v9, v0, v2

    .line 1150
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x8

    aput v11, v0, v2

    .line 1151
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x9

    aput v4, v0, v2

    .line 1153
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xa

    aput v7, v0, v2

    .line 1154
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xb

    aput v6, v0, v2

    .line 1155
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xd

    aput v4, v0, v2

    .line 1156
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xe

    aput v10, v0, v2

    .line 1158
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xf

    aput v8, v0, v2

    .line 1159
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x10

    aput v6, v0, v2

    .line 1160
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x12

    aput v11, v0, v2

    .line 1161
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x13

    aput v10, v0, v2

    .line 1163
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1164
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1166
    const/16 v0, 0xde1

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1168
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1169
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1173
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1174
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1176
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1179
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1182
    invoke-static {v13, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1186
    return-void
.end method

.method drawCheckerBoard()V
    .locals 21

    .prologue
    .line 1191
    const/4 v14, 0x0

    .line 1192
    .local v14, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1193
    .local v18, top:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    int-to-float v15, v3

    .line 1194
    .local v15, right:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    int-to-float v9, v3

    .line 1195
    .local v9, bottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1196
    .local v19, zoomLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1197
    .local v20, zoomTop:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    const/high16 v3, 0x4280

    div-float v3, v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v17, v3, v4

    .line 1198
    .local v17, textCoordRight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    const/high16 v3, 0x4280

    div-float v3, v9, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v16, v3, v4

    .line 1201
    .local v16, textCoordBottom:F
    sub-float v3, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v11

    .line 1202
    .local v11, glLeft:F
    sub-float v3, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v13

    .line 1203
    .local v13, glTop:F
    sub-float v3, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v12

    .line 1204
    .local v12, glRight:F
    sub-float v3, v9, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v10

    .line 1211
    .local v10, glBottom:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x0

    aput v11, v3, v4

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x1

    aput v13, v3, v4

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x5

    aput v12, v3, v4

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x6

    aput v13, v3, v4

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x8

    aput v17, v3, v4

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xa

    aput v11, v3, v4

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xb

    aput v10, v3, v4

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xe

    aput v16, v3, v4

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xf

    aput v12, v3, v4

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x10

    aput v10, v3, v4

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x12

    aput v17, v3, v4

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x13

    aput v16, v3, v4

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1234
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    move v3, v0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1250
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1253
    return-void
.end method

.method drawEdges(II)V
    .locals 44
    .parameter "edges"
    .parameter "edgeWidth"

    .prologue
    .line 846
    move/from16 v0, p2

    int-to-float v0, v0

    move v12, v0

    .line 847
    .local v12, delta:F
    move/from16 v25, v12

    .line 848
    .local v25, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v3

    int-to-float v3, v3

    add-float v40, v3, v12

    .line 849
    .local v40, top:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    int-to-float v3, v3

    sub-float v33, v3, v12

    .line 850
    .local v33, right:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    int-to-float v3, v3

    sub-float v11, v3, v12

    .line 851
    .local v11, bottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v42, v0

    .line 852
    .local v42, zoomLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v43, v0

    .line 853
    .local v43, zoomTop:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    const/high16 v3, 0x4280

    div-float v3, v33, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v39, v3, v4

    .line 854
    .local v39, textCoordRight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    const/high16 v3, 0x4280

    div-float v3, v11, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v38, v3, v4

    .line 857
    .local v38, textCoordBottom:F
    sub-float v3, v25, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v14

    .line 858
    .local v14, glLeft:F
    sub-float v3, v40, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v19

    .line 859
    .local v19, glTop:F
    sub-float v3, v33, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v16

    .line 860
    .local v16, glRight:F
    sub-float v3, v11, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v13

    .line 863
    .local v13, glBottom:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    float-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    div-float v3, v12, v3

    move/from16 v37, v3

    .line 864
    .local v37, shadowWidth:F
    :goto_0
    sub-float v26, v25, v37

    .line 865
    .local v26, left2:F
    sub-float v41, v40, v37

    .line 867
    .local v41, top2:F
    sub-float v3, v26, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v15

    .line 868
    .local v15, glLeft2:F
    sub-float v3, v41, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v20

    .line 870
    .local v20, glTop2:F
    sub-float v17, v14, v15

    .line 871
    .local v17, glThickH:F
    sub-float v18, v20, v19

    .line 872
    .local v18, glThickV:F
    const/4 v9, 0x0

    .line 873
    .local v9, blendFrom:F
    const v10, 0x3f333333

    .line 877
    .local v10, blendTo:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    move v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 878
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 879
    const/16 v3, 0xbd0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 880
    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 884
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    const/4 v3, 0x4

    move/from16 v0, v21

    move v1, v3

    if-ge v0, v1, :cond_6

    .line 886
    if-nez v21, :cond_3

    .line 888
    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_2

    .line 884
    :cond_0
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .end local v9           #blendFrom:F
    .end local v10           #blendTo:F
    .end local v15           #glLeft2:F
    .end local v17           #glThickH:F
    .end local v18           #glThickV:F
    .end local v20           #glTop2:F
    .end local v21           #i:I
    .end local v26           #left2:F
    .end local v37           #shadowWidth:F
    .end local v41           #top2:F
    :cond_1
    move/from16 v37, v12

    .line 863
    goto :goto_0

    .line 890
    .restart local v9       #blendFrom:F
    .restart local v10       #blendTo:F
    .restart local v15       #glLeft2:F
    .restart local v17       #glThickH:F
    .restart local v18       #glThickV:F
    .restart local v20       #glTop2:F
    .restart local v21       #i:I
    .restart local v26       #left2:F
    .restart local v37       #shadowWidth:F
    .restart local v41       #top2:F
    :cond_2
    sub-float v28, v14, v17

    .line 891
    .local v28, ltX:F
    sub-float v23, v14, v17

    .line 892
    .local v23, lbX:F
    add-float v35, v16, v17

    .line 893
    .local v35, rtX:F
    add-float v31, v16, v17

    .line 894
    .local v31, rbX:F
    add-float v29, v19, v18

    .local v29, ltY:F
    move/from16 v36, v29

    .line 895
    .local v36, rtY:F
    move/from16 v32, v19

    .local v32, rbY:F
    move/from16 v24, v19

    .line 896
    .local v24, lbY:F
    move/from16 v34, v10

    .local v34, rt:F
    move/from16 v27, v10

    .line 897
    .local v27, lt:F
    move/from16 v30, v9

    .local v30, rb:F
    move/from16 v22, v9

    .line 942
    .local v22, lb:F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x0

    aput v28, v3, v4

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x1

    aput v29, v3, v4

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x3

    const v5, 0x3d70d845

    aput v5, v3, v4

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x4

    const v5, 0x3e4ccccd

    aput v5, v3, v4

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x5

    const v5, 0x3ecccccd

    aput v5, v3, v4

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x6

    aput v27, v3, v4

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x7

    aput v35, v3, v4

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x8

    aput v36, v3, v4

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xa

    const v5, 0x3d70d845

    aput v5, v3, v4

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xb

    const v5, 0x3e4ccccd

    aput v5, v3, v4

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xc

    const v5, 0x3ecccccd

    aput v5, v3, v4

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xd

    aput v34, v3, v4

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xe

    aput v23, v3, v4

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xf

    aput v24, v3, v4

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x11

    const v5, 0x3d70d845

    aput v5, v3, v4

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x12

    const v5, 0x3e4ccccd

    aput v5, v3, v4

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x13

    const v5, 0x3ecccccd

    aput v5, v3, v4

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x14

    aput v30, v3, v4

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x15

    aput v31, v3, v4

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x16

    aput v32, v3, v4

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x18

    const v5, 0x3d70d845

    aput v5, v3, v4

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x19

    const v5, 0x3e4ccccd

    aput v5, v3, v4

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x1a

    const v5, 0x3ecccccd

    aput v5, v3, v4

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x1b

    aput v30, v3, v4

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 980
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 981
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    move v3, v0

    const/4 v4, 0x4

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 985
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_2

    .line 899
    .end local v22           #lb:F
    .end local v23           #lbX:F
    .end local v24           #lbY:F
    .end local v27           #lt:F
    .end local v28           #ltX:F
    .end local v29           #ltY:F
    .end local v30           #rb:F
    .end local v31           #rbX:F
    .end local v32           #rbY:F
    .end local v34           #rt:F
    .end local v35           #rtX:F
    .end local v36           #rtY:F
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v21

    move v1, v3

    if-ne v0, v1, :cond_4

    .line 901
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    .line 903
    move/from16 v35, v14

    .restart local v35       #rtX:F
    move/from16 v28, v14

    .line 904
    .restart local v28       #ltX:F
    sub-float v31, v14, v17

    .restart local v31       #rbX:F
    move/from16 v23, v31

    .line 905
    .restart local v23       #lbX:F
    add-float v29, v19, v18

    .line 906
    .restart local v29       #ltY:F
    add-float v24, v19, v18

    .line 907
    .restart local v24       #lbY:F
    sub-float v36, v13, v18

    .line 908
    .restart local v36       #rtY:F
    sub-float v32, v13, v18

    .line 909
    .restart local v32       #rbY:F
    move/from16 v34, v9

    .restart local v34       #rt:F
    move/from16 v27, v9

    .line 910
    .restart local v27       #lt:F
    move/from16 v30, v10

    .restart local v30       #rb:F
    move/from16 v22, v10

    .restart local v22       #lb:F
    goto/16 :goto_3

    .line 914
    .end local v22           #lb:F
    .end local v23           #lbX:F
    .end local v24           #lbY:F
    .end local v27           #lt:F
    .end local v28           #ltX:F
    .end local v29           #ltY:F
    .end local v30           #rb:F
    .end local v31           #rbX:F
    .end local v32           #rbY:F
    .end local v34           #rt:F
    .end local v35           #rtX:F
    .end local v36           #rtY:F
    :cond_4
    const/4 v3, 0x2

    move/from16 v0, v21

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 916
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    .line 918
    add-float v35, v16, v17

    .restart local v35       #rtX:F
    move/from16 v28, v35

    .line 919
    .restart local v28       #ltX:F
    move/from16 v31, v16

    .restart local v31       #rbX:F
    move/from16 v23, v16

    .line 920
    .restart local v23       #lbX:F
    add-float v29, v19, v18

    .line 921
    .restart local v29       #ltY:F
    add-float v24, v19, v18

    .line 922
    .restart local v24       #lbY:F
    sub-float v32, v13, v18

    .line 923
    .restart local v32       #rbY:F
    sub-float v36, v13, v18

    .line 925
    .restart local v36       #rtY:F
    move/from16 v30, v9

    .restart local v30       #rb:F
    move/from16 v22, v9

    .line 926
    .restart local v22       #lb:F
    move/from16 v34, v10

    .restart local v34       #rt:F
    move/from16 v27, v10

    .restart local v27       #lt:F
    goto/16 :goto_3

    .line 930
    .end local v22           #lb:F
    .end local v23           #lbX:F
    .end local v24           #lbY:F
    .end local v27           #lt:F
    .end local v28           #ltX:F
    .end local v29           #ltY:F
    .end local v30           #rb:F
    .end local v31           #rbX:F
    .end local v32           #rbY:F
    .end local v34           #rt:F
    .end local v35           #rtX:F
    .end local v36           #rtY:F
    :cond_5
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_0

    .line 932
    move/from16 v36, v13

    .restart local v36       #rtY:F
    move/from16 v29, v13

    .line 933
    .restart local v29       #ltY:F
    sub-float v32, v13, v18

    .restart local v32       #rbY:F
    move/from16 v24, v32

    .line 934
    .restart local v24       #lbY:F
    sub-float v28, v14, v17

    .line 935
    .restart local v28       #ltX:F
    add-float v35, v16, v17

    .line 936
    .restart local v35       #rtX:F
    sub-float v23, v14, v17

    .line 937
    .restart local v23       #lbX:F
    add-float v31, v16, v17

    .line 938
    .restart local v31       #rbX:F
    move/from16 v34, v9

    .restart local v34       #rt:F
    move/from16 v27, v9

    .line 939
    .restart local v27       #lt:F
    move/from16 v30, v10

    .restart local v30       #rb:F
    move/from16 v22, v10

    .restart local v22       #lb:F
    goto/16 :goto_3

    .line 988
    .end local v22           #lb:F
    .end local v23           #lbX:F
    .end local v24           #lbY:F
    .end local v27           #lt:F
    .end local v28           #ltX:F
    .end local v29           #ltY:F
    .end local v30           #rb:F
    .end local v31           #rbX:F
    .end local v32           #rbY:F
    .end local v34           #rt:F
    .end local v35           #rtX:F
    .end local v36           #rtY:F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    move v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 989
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 990
    const/16 v3, 0xbd0

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 991
    return-void
.end method

.method drawRect(Landroid/graphics/Rect;)V
    .locals 43
    .parameter "rect"

    .prologue
    .line 1262
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    .line 1264
    .local v23, lx:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    .line 1265
    .local v29, rx:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v40, v0

    .line 1266
    .local v40, ty:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    .line 1270
    .local v16, by:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    rem-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    .line 1271
    .local v30, shiftx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    rem-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v31, v0

    .line 1282
    .local v31, shifty:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v21

    .line 1283
    .local v21, glLeft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v40

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v4, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v22

    .line 1285
    .local v22, glTop:F
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v6, v3, v4

    .line 1286
    .local v6, glTileW:F
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v7, v3, v4

    .line 1292
    .local v7, glTileH:F
    const/16 v26, 0x0

    .line 1293
    .local v26, removeTopEdge:Z
    const/high16 v18, -0x4080

    .line 1294
    .local v18, glEdgeTop:F
    const/high16 v36, -0x4080

    .line 1295
    .local v36, texTop:F
    const/high16 v19, -0x4080

    .line 1296
    .local v19, glEdgeTopH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v40

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int v39, v3, v4

    .line 1297
    .local v39, topEdge:I
    if-nez v39, :cond_0

    .line 1299
    const/16 v26, 0x1

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v37

    .line 1301
    .local v37, titleH:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v3, v0

    sub-int v3, v37, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v18

    .line 1302
    move/from16 v0, v37

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    div-float v36, v3, v4

    .line 1303
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/16 v4, 0x100

    sub-int v4, v4, v37

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v19, v3, v4

    .line 1307
    .end local v37           #titleH:I
    :cond_0
    const/16 v25, 0x0

    .line 1308
    .local v25, removeRightEdge:Z
    const/high16 v20, -0x4080

    .line 1309
    .local v20, glEdgeW:F
    const/high16 v35, -0x4080

    .line 1310
    .local v35, texRight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    add-int/lit16 v0, v0, 0x100

    move/from16 v28, v0

    .line 1311
    .local v28, rightEdge:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move/from16 v0, v28

    move v1, v3

    if-le v0, v1, :cond_1

    .line 1313
    const/16 v25, 0x1

    .line 1314
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    const/16 v5, 0x100

    sub-int v5, v28, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v20, v3, v4

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/16 v4, 0x100

    sub-int v4, v28, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    div-float v35, v3, v4

    .line 1319
    :cond_1
    const/16 v24, 0x0

    .line 1320
    .local v24, removeBottomEdge:Z
    const/high16 v17, -0x4080

    .line 1321
    .local v17, glEdgeH:F
    const/high16 v34, -0x4080

    .line 1322
    .local v34, texBottom:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    add-int/lit16 v15, v3, 0x100

    .line 1323
    .local v15, bottomEdge:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v15, v3, :cond_2

    .line 1325
    const/16 v24, 0x1

    .line 1326
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    const/16 v5, 0x100

    sub-int v5, v15, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v17, v3, v4

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/16 v4, 0x100

    sub-int v4, v15, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    div-float v34, v3, v4

    .line 1331
    :cond_2
    move/from16 v41, v23

    .local v41, x:I
    :goto_0
    move/from16 v0, v41

    move/from16 v1, v29

    if-gt v0, v1, :cond_10

    .line 1332
    move/from16 v42, v40

    .local v42, y:I
    :goto_1
    move/from16 v0, v42

    move/from16 v1, v16

    if-gt v0, v1, :cond_f

    .line 1334
    add-int v3, v41, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    rem-int v32, v3, v4

    .line 1335
    .local v32, targetx:I
    add-int v3, v42, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    rem-int v33, v3, v4

    .line 1337
    .local v33, targety:I
    if-ltz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move/from16 v0, v32

    move v1, v3

    if-ge v0, v1, :cond_3

    if-ltz v33, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move/from16 v0, v33

    move v1, v3

    if-lt v0, v1, :cond_4

    .line 1332
    :cond_3
    :goto_2
    add-int/lit8 v42, v42, 0x1

    goto :goto_1

    .line 1344
    :cond_4
    sub-int v3, v41, v23

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float v4, v21, v3

    .line 1345
    .local v4, left:F
    move/from16 v0, v41

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 1346
    add-float v27, v4, v20

    .line 1350
    .local v27, right:F
    :goto_3
    if-nez v42, :cond_6

    const/4 v3, 0x1

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_6

    .line 1351
    move/from16 v38, v18

    .line 1355
    .local v38, top:F
    :goto_4
    if-nez v42, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_7

    .line 1357
    sub-float v14, v38, v19

    .line 1365
    .local v14, bottom:F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v5, 0x1

    aput v38, v3, v5

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v5, 0x3

    const/4 v8, 0x0

    aput v8, v3, v5

    .line 1368
    if-nez v42, :cond_9

    const/4 v3, 0x1

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v5, 0x4

    aput v36, v3, v5

    .line 1373
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v5, 0x5

    aput v27, v3, v5

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v5, 0x6

    aput v38, v3, v5

    .line 1375
    move/from16 v0, v41

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_a

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x8

    aput v35, v3, v5

    .line 1379
    :goto_7
    if-nez v42, :cond_b

    const/4 v3, 0x1

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_b

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x9

    aput v36, v3, v5

    .line 1384
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0xa

    aput v4, v3, v5

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0xb

    aput v14, v3, v5

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0xd

    const/4 v8, 0x0

    aput v8, v3, v5

    .line 1387
    move/from16 v0, v42

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_c

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0xe

    aput v34, v3, v5

    .line 1392
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0xf

    aput v27, v3, v5

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x10

    aput v14, v3, v5

    .line 1394
    move/from16 v0, v41

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_d

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x12

    aput v35, v3, v5

    .line 1398
    :goto_a
    move/from16 v0, v42

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_e

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x13

    aput v34, v3, v5

    .line 1403
    :goto_b
    sub-int v3, v42, v40

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float v5, v22, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexPartialRects:[[Landroid/graphics/Rect;

    move-object v3, v0

    aget-object v3, v3, v33

    aget-object v9, v3, v32

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/browser/BitmapWebViewSurface3D;->clipTileTexture(FFFF[FLandroid/graphics/Rect;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1407
    .end local v4           #left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1410
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexTiles:[[I

    move-object v4, v0

    aget-object v4, v4, v33

    aget v4, v4, v32

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v8, v0

    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v13, v0

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    move v8, v0

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v13, v0

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1427
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_2

    .line 1348
    .end local v14           #bottom:F
    .end local v27           #right:F
    .end local v38           #top:F
    .restart local v4       #left:F
    :cond_5
    add-float v27, v4, v6

    .restart local v27       #right:F
    goto/16 :goto_3

    .line 1353
    :cond_6
    sub-int v3, v42, v40

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float v38, v22, v3

    .restart local v38       #top:F
    goto/16 :goto_4

    .line 1359
    :cond_7
    move/from16 v0, v42

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_8

    .line 1360
    sub-float v14, v38, v17

    .restart local v14       #bottom:F
    goto/16 :goto_5

    .line 1362
    .end local v14           #bottom:F
    :cond_8
    sub-float v14, v38, v7

    .restart local v14       #bottom:F
    goto/16 :goto_5

    .line 1371
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v5, 0x4

    const/4 v8, 0x0

    aput v8, v3, v5

    goto/16 :goto_6

    .line 1378
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x8

    const/high16 v8, 0x3f80

    aput v8, v3, v5

    goto/16 :goto_7

    .line 1382
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x9

    const/4 v8, 0x0

    aput v8, v3, v5

    goto/16 :goto_8

    .line 1390
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0xe

    const/high16 v8, 0x3f80

    aput v8, v3, v5

    goto/16 :goto_9

    .line 1397
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x12

    const/high16 v8, 0x3f80

    aput v8, v3, v5

    goto/16 :goto_a

    .line 1401
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v5, 0x13

    const/high16 v8, 0x3f80

    aput v8, v3, v5

    goto/16 :goto_b

    .line 1331
    .end local v4           #left:F
    .end local v14           #bottom:F
    .end local v27           #right:F
    .end local v32           #targetx:I
    .end local v33           #targety:I
    .end local v38           #top:F
    :cond_f
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_0

    .line 1435
    .end local v42           #y:I
    :cond_10
    return-void
.end method

.method drawScrollbar()V
    .locals 23

    .prologue
    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I

    move v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1577
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1578
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    move v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    move v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    move v1, v0

    const v2, 0x3c23d70a

    const v3, 0x3c23d70a

    const v4, 0x3c23d70a

    const/high16 v5, 0x3f00

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-ge v1, v2, :cond_2

    .line 1587
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mScrollBarPadding:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v12, v1, v2

    .line 1589
    .local v12, paddingV:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v1

    move v0, v1

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1590
    .local v17, titleBarH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    int-to-float v1, v1

    sub-float v7, v1, v17

    .line 1592
    .local v7, contentsHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v0, v1

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1593
    .local v20, viewtop:F
    const/4 v14, 0x0

    .line 1594
    .local v14, tensiony:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    if-gez v1, :cond_5

    .line 1596
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewTop:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v14, v1, v2

    .line 1597
    const/16 v20, 0x0

    .line 1606
    :cond_0
    :goto_0
    const/16 v21, 0x0

    .line 1608
    .local v21, visibleTitleBarH:F
    sub-float v1, v20, v17

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1609
    sub-float v1, v20, v17

    move v0, v1

    neg-float v0, v0

    move/from16 v21, v0

    .line 1610
    :cond_1
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mScrollBarThickness:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v16, v1, v2

    .line 1613
    .local v16, thicknessV:F
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v2, v2

    div-float v2, v21, v2

    mul-float v8, v1, v2

    .line 1614
    .local v8, glVisibletitleh:F
    const/high16 v1, 0x4000

    sub-float/2addr v1, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v2, v2

    sub-float v2, v2, v21

    div-float/2addr v2, v7

    mul-float v9, v1, v2

    .line 1615
    .local v9, height:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v8

    const/high16 v2, 0x4000

    sub-float v3, v17, v21

    sub-float v3, v20, v3

    div-float/2addr v3, v7

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float v18, v1, v14

    .line 1618
    .local v18, top:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    sub-float v3, v3, v16

    sub-float/2addr v3, v12

    aput v3, v1, v2

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x1

    aput v18, v1, v2

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x5

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v12

    aput v3, v1, v2

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x6

    aput v18, v1, v2

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xa

    const/high16 v3, 0x3f80

    sub-float v3, v3, v16

    sub-float/2addr v3, v12

    aput v3, v1, v2

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xb

    sub-float v3, v18, v9

    aput v3, v1, v2

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xf

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v12

    aput v3, v1, v2

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0x10

    sub-float v3, v18, v9

    aput v3, v1, v2

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1643
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1648
    .end local v7           #contentsHeight:F
    .end local v8           #glVisibletitleh:F
    .end local v9           #height:F
    .end local v12           #paddingV:F
    .end local v14           #tensiony:F
    .end local v16           #thicknessV:F
    .end local v17           #titleBarH:F
    .end local v18           #top:F
    .end local v20           #viewtop:F
    .end local v21           #visibleTitleBarH:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-ge v1, v2, :cond_4

    .line 1650
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mScrollBarPadding:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v11, v1, v2

    .line 1651
    .local v11, paddingH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v0, v1

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1652
    .local v19, viewleft:F
    const/4 v13, 0x0

    .line 1653
    .local v13, tensionx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    if-gez v1, :cond_6

    .line 1656
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v13, v1, v2

    .line 1657
    const/16 v19, 0x0

    .line 1665
    :cond_3
    :goto_1
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mScrollBarThickness:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v15, v1, v2

    .line 1666
    .local v15, thicknessH:F
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v22, v1, v2

    .line 1667
    .local v22, width:F
    const/high16 v1, -0x4080

    const/high16 v2, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    int-to-float v3, v3

    div-float v3, v19, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float v10, v1, v13

    .line 1672
    .local v10, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x0

    aput v10, v1, v2

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x1

    const/high16 v3, -0x4080

    add-float/2addr v3, v15

    add-float/2addr v3, v11

    aput v3, v1, v2

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x5

    add-float v3, v10, v22

    aput v3, v1, v2

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x6

    const/high16 v3, -0x4080

    add-float/2addr v3, v15

    add-float/2addr v3, v11

    aput v3, v1, v2

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xa

    aput v10, v1, v2

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xb

    const/high16 v3, -0x4080

    add-float/2addr v3, v11

    aput v3, v1, v2

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xf

    add-float v3, v10, v22

    aput v3, v1, v2

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0x10

    const/high16 v3, -0x4080

    add-float/2addr v3, v11

    aput v3, v1, v2

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1697
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1701
    .end local v10           #left:F
    .end local v11           #paddingH:F
    .end local v13           #tensionx:F
    .end local v15           #thicknessH:F
    .end local v19           #viewleft:F
    .end local v22           #width:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    move v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1702
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1703
    return-void

    .line 1599
    .restart local v7       #contentsHeight:F
    .restart local v12       #paddingV:F
    .restart local v14       #tensiony:F
    .restart local v17       #titleBarH:F
    .restart local v20       #viewtop:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v1, v2, :cond_0

    .line 1601
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v14, v1, v2

    .line 1602
    neg-float v14, v14

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    sub-int/2addr v1, v2

    move v0, v1

    int-to-float v0, v0

    move/from16 v20, v0

    goto/16 :goto_0

    .line 1659
    .end local v7           #contentsHeight:F
    .end local v12           #paddingV:F
    .end local v14           #tensiony:F
    .end local v17           #titleBarH:F
    .end local v20           #viewtop:F
    .restart local v11       #paddingH:F
    .restart local v13       #tensionx:F
    .restart local v19       #viewleft:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v1, v2, :cond_3

    .line 1661
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v13, v1, v2

    .line 1662
    neg-float v13, v13

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    sub-int/2addr v1, v2

    move v0, v1

    int-to-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_1
.end method

.method drawTitleBar()V
    .locals 13

    .prologue
    const/high16 v12, -0x4080

    const/4 v1, 0x3

    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    const/4 v3, 0x0

    .line 1502
    iget-wide v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarBitmapGeneration:J

    sget-wide v8, Lcom/android/browser/TitleBar;->mGeneration:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mUpdatingTitleBar:Z

    if-nez v0, :cond_0

    .line 1503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mUpdatingTitleBar:Z

    .line 1504
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    new-instance v2, Lcom/android/browser/BitmapWebViewSurface3D$5;

    invoke-direct {v2, p0}, Lcom/android/browser/BitmapWebViewSurface3D$5;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    invoke-virtual {v0, v2}, Lcom/android/browser/BitmapWebView;->post(Ljava/lang/Runnable;)Z

    .line 1515
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->updateTitleBarTexture()V

    .line 1517
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v7

    .line 1518
    .local v7, right:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v6

    .line 1526
    .local v6, bottom:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v12, v0, v3

    .line 1527
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x1

    aput v10, v0, v2

    .line 1528
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v11, v0, v1

    .line 1529
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x4

    aput v11, v0, v2

    .line 1531
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x5

    aput v7, v0, v2

    .line 1532
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x6

    aput v10, v0, v2

    .line 1533
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x8

    aput v10, v0, v2

    .line 1534
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x9

    aput v11, v0, v2

    .line 1536
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xa

    aput v12, v0, v2

    .line 1537
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xb

    aput v6, v0, v2

    .line 1538
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xd

    aput v11, v0, v2

    .line 1539
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xe

    aput v10, v0, v2

    .line 1541
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xf

    aput v7, v0, v2

    .line 1542
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x10

    aput v6, v0, v2

    .line 1543
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x12

    aput v10, v0, v2

    .line 1544
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x13

    aput v10, v0, v2

    .line 1546
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1547
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1549
    const/16 v0, 0xde1

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1551
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1552
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1556
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1557
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1559
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1562
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1565
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1568
    return-void
.end method

.method fixBlackScreen()V
    .locals 1

    .prologue
    .line 2357
    new-instance v0, Lcom/android/browser/BitmapWebViewSurface3D$6;

    invoke-direct {v0, p0}, Lcom/android/browser/BitmapWebViewSurface3D$6;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->post(Ljava/lang/Runnable;)Z

    .line 2375
    return-void
.end method

.method public fixSurfaceSize()V
    .locals 3

    .prologue
    .line 2387
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->getWidth()I

    move-result v1

    .line 2388
    .local v1, viewWidth:I
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->getHeight()I

    move-result v0

    .line 2389
    .local v0, viewHeight:I
    new-instance v2, Lcom/android/browser/BitmapWebViewSurface3D$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/browser/BitmapWebViewSurface3D$7;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;II)V

    invoke-virtual {p0, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->queueEvent(Ljava/lang/Runnable;)V

    .line 2398
    return-void
.end method

.method frameChars(J)Ljava/lang/String;
    .locals 5
    .parameter "n"

    .prologue
    const-wide/16 v3, 0x0

    .line 1707
    const-wide/16 v1, 0x11

    sub-long/2addr p1, v1

    .line 1708
    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    .line 1709
    const-string v1, ""

    .line 1719
    :goto_0
    return-object v1

    .line 1711
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1712
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-wide/16 v1, 0x32

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 1713
    const-wide/16 p1, 0x32

    .line 1715
    :cond_1
    :goto_1
    cmp-long v1, p1, v3

    if-lez v1, :cond_2

    .line 1716
    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1717
    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    goto :goto_1

    .line 1719
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTile(IILandroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "tileBoundary"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->getNextTile()Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v0

    .line 314
    .local v0, tile:Lcom/android/browser/BitmapWebView$Tile;
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBmpPartialRects:[[Landroid/graphics/Rect;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 317
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexTiles:[[I

    aget-object v1, v1, p2

    aget v1, v1, p1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/browser/BitmapWebView$Tile;->set(IILandroid/graphics/Rect;I)V

    .line 321
    :cond_0
    return-object v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    float-to-int v0, v0

    return v0
.end method

.method hideSurfaceUntilFlipped()V
    .locals 1

    .prologue
    .line 298
    const/16 v0, 0x20

    .line 300
    .local v0, flag:I
    invoke-virtual {p0, v0, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->setSurfaceFlags(II)V

    .line 302
    return-void
.end method

.method public onPaused()V
    .locals 0

    .prologue
    .line 2325
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->onPause()V

    .line 2326
    return-void
.end method

.method public onResumed()V
    .locals 0

    .prologue
    .line 2333
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->onResume()V

    .line 2334
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 2317
    sget-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    const-string v1, "pause start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->unloadExtraTextures()V

    .line 2320
    sget-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    const-string v1, "pause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    return-void
.end method

.method public reArrangeTextures(IIII)V
    .locals 5
    .parameter "textureWidth"
    .parameter "textureHeight"
    .parameter "tileNumX"
    .parameter "tileNumY"

    .prologue
    .line 406
    filled-new-array {p4, p3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexTiles:[[I

    .line 407
    filled-new-array {p4, p3}, [I

    move-result-object v3

    const-class v4, Landroid/graphics/Rect;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBmpPartialRects:[[Landroid/graphics/Rect;

    .line 408
    filled-new-array {p4, p3}, [I

    move-result-object v3

    const-class v4, Landroid/graphics/Rect;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexPartialRects:[[Landroid/graphics/Rect;

    .line 410
    int-to-float v3, p1

    iget v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureScaleX:F

    .line 411
    int-to-float v3, p2

    iget v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureScaleY:F

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 417
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    if-ge v2, p4, :cond_0

    .line 420
    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexTiles:[[I

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aget v4, v4, v0

    aput v4, v3, v1

    .line 421
    add-int/lit8 v0, v0, 0x1

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v2           #y:I
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->reset()V

    .line 427
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 2329
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webview"

    .prologue
    .line 824
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    .line 825
    return-void
.end method

.method public stopDraw()V
    .locals 0

    .prologue
    .line 2338
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->stopRender()V

    .line 2339
    return-void
.end method

.method toGLX(FF)F
    .locals 2
    .parameter "x"
    .parameter "width"

    .prologue
    .line 795
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    div-float v0, v1, p2

    .line 796
    .local v0, glx:F
    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    .line 798
    return v0
.end method

.method toGLY(FF)F
    .locals 2
    .parameter "y"
    .parameter "height"

    .prologue
    .line 804
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    div-float v0, v1, p2

    .line 805
    .local v0, gly:F
    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    .line 807
    return v0
.end method

.method public declared-synchronized unloadExtraTextures()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 493
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 501
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mOnUnloadExtraTextures:Z

    .line 503
    new-instance v1, Lcom/android/browser/BitmapWebViewSurface3D$2;

    invoke-direct {v1, p0}, Lcom/android/browser/BitmapWebViewSurface3D$2;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :try_start_2
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mOnUnloadExtraTextures:Z

    if-ne v1, v4, :cond_2

    .line 529
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 538
    :cond_2
    :goto_1
    :try_start_3
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mOnUnloadExtraTextures:Z

    if-eq v1, v4, :cond_3

    .line 540
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v2, v1, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    .line 541
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 533
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 535
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unloadExtraTextures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 546
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mGLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 547
    sget-object v1, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unloadExtraTextures GLThread state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method unloadExtraTexturesGL()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->reloadExtraWebViewTextureGL(II)V

    .line 489
    return-void
.end method

.method public updateTile(Lcom/android/browser/BitmapWebView$Tile;)V
    .locals 1
    .parameter "tile"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->push(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 814
    return-void
.end method

.method public updateTilesInQueue()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/android/browser/BitmapWebViewSurface3D$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BitmapWebViewSurface3D$1;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->queueEvent(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method updateTitleBarTexture()V
    .locals 3

    .prologue
    const/16 v2, 0xde1

    const/4 v1, 0x0

    .line 829
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    if-nez v0, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 837
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v1, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 841
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iput-boolean v1, v0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    goto :goto_0
.end method

.method updateWebViewTextureGL(Lcom/android/browser/BitmapWebView$Tile;)V
    .locals 11
    .parameter "tile"

    .prologue
    const/16 v10, 0x100

    const/4 v9, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 366
    .local v6, started:J
    iget v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mTexID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 367
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexPartialRects:[[Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v2, v2, v3

    iget v3, p1, Lcom/android/browser/BitmapWebView$Tile;->x:I

    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBmpPartialRects:[[Landroid/graphics/Rect;

    iget v8, p1, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v4, v4, v8

    iget v8, p1, Lcom/android/browser/BitmapWebView$Tile;->x:I

    aget-object v4, v4, v8

    aput-object v4, v2, v3

    .line 369
    iget-boolean v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCompressedTexEnable:Z

    if-ne v2, v9, :cond_3

    .line 371
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    iget-object v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 373
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 374
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x200

    invoke-static {v2, v10, v10, v3, v4}, Landroid/opengl/ETC1Util;->compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    .line 380
    .local v5, etc1Tex:Landroid/opengl/ETC1Util$ETC1Texture;
    const/16 v3, 0x1907

    const v4, 0x8363

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 388
    .end local v5           #etc1Tex:Landroid/opengl/ETC1Util$ETC1Texture;
    :goto_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v1, v1, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    iget-object v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-nez v9, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mDebugTiles:[[Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->x:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mDebugTiles:[[Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->x:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mDebugTiles:[[Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->x:I

    iget-object v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 399
    :cond_1
    sget-boolean v0, Lcom/android/browser/BitmapWebViewSurface3D;->DEBUG_PERFORMANCE:Z

    if-eqz v0, :cond_2

    const-string v0, "GL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWebViewTextureGL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2
    return-void

    .line 386
    :cond_3
    iget-object v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateWindow(ZZZII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->ignoreUpdate3DSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2413
    sget-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    const-string v1, "Ignored updateWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :goto_0
    return-void

    .line 2416
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/opengl/GLSurfaceView;->updateWindow(ZZZII)V

    goto :goto_0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    float-to-int v0, v0

    return v0
.end method

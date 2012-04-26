.class public Lcom/miui/camera/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# instance fields
.field private final mButton:Landroid/widget/ImageView;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mResources:Landroid/content/res/Resources;

.field private mShouldAnimateThumb:Z

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resources"
    .parameter "button"
    .parameter "contentResolver"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/miui/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 38
    iput-object p2, p0, Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 39
    iput-object p3, p0, Lcom/miui/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/camera/ThumbnailController;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/camera/ThumbnailController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/camera/ThumbnailController;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/camera/ThumbnailController;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/camera/ThumbnailController;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/camera/ThumbnailController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/camera/ThumbnailController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/miui/camera/ThumbnailController;->mShouldAnimateThumb:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/camera/ThumbnailController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/miui/camera/ThumbnailController;->mShouldAnimateThumb:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/camera/ThumbnailController;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/camera/ThumbnailController;Landroid/graphics/drawable/TransitionDrawable;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    return-object p1
.end method

.method private updateThumb(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "original"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x5

    .line 57
    if-nez p1, :cond_0

    .line 58
    iput-object v3, p0, Lcom/miui/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 59
    iput-object v3, p0, Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 99
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 64
    .local v2, param:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 65
    .local v1, miniThumbWidth:I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 66
    .local v0, miniThumbHeight:I
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lcom/miui/camera/Util;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 70
    iget-object v3, p0, Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/miui/camera/ThumbnailController$1;

    invoke-direct {v4, p0}, Lcom/miui/camera/ThumbnailController$1;-><init>(Lcom/miui/camera/ThumbnailController;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v2, p0, Lcom/miui/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move v2, v5

    .line 114
    :goto_0
    return v2

    .line 105
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/miui/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 106
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 107
    const-string v2, "com.miui.camera.ThumbnailController"

    const-string v3, "Fail to open URI."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v2, 0x1

    goto :goto_0

    .line 111
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/io/IOException;
    move v2, v5

    .line 112
    goto :goto_0
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uri"
    .parameter "original"

    .prologue
    .line 44
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    const/4 p2, 0x0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/miui/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    .line 49
    invoke-direct {p0, p2}, Lcom/miui/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method

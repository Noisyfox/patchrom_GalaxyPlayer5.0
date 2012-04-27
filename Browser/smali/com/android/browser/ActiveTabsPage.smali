.class public Lcom/android/browser/ActiveTabsPage;
.super Landroid/view/View;
.source "ActiveTabsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ActiveTabsPage$LearnGestureListener;
    }
.end annotation


# instance fields
.field private mAddNewThumbnail:Z

.field private mAnimationTimeLength:J

.field private mBlankBitmap:Landroid/graphics/Bitmap;

.field private mBlankBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBlockNewWindow:I

.field private mBlockWidth:I

.field private final mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private mCloseIcon:Landroid/graphics/Bitmap;

.field private mCloseIconF:Landroid/graphics/Bitmap;

.field private mCloseIconP:Landroid/graphics/Bitmap;

.field private mCloseIconPressed:Z

.field private mCloseIconRect:Landroid/graphics/RectF;

.field private mConfigChanged:Z

.field private mContinousScrollMode:Z

.field private final mControl:Lcom/android/browser/TabControl;

.field private mCurrentTabIndex:I

.field private mDeleteThumbnailIndex:I

.field private mDisplayHeight:I

.field private mDisplayRatio:F

.field private mDisplayWidth:I

.field mEnterActiveTabsPage:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/android/browser/ActiveTabsPage$LearnGestureListener;

.field private mH0Spacing:I

.field private mH1Spacing:I

.field private mHeight:I

.field private mNewThumbnailIndex:I

.field private mNewWindow:Landroid/graphics/Bitmap;

.field private mNewWindowBG:Landroid/graphics/Bitmap;

.field private mNewWindowBGRect:Landroid/graphics/RectF;

.field private mNewWindowBG_9:Landroid/graphics/NinePatch;

.field private mNewWindowD:Landroid/graphics/Bitmap;

.field private mNewWindowD_9:Landroid/graphics/NinePatch;

.field private mNewWindowP:Landroid/graphics/Bitmap;

.field private mNewWindowP_9:Landroid/graphics/NinePatch;

.field private mNewWindowRect:Landroid/graphics/RectF;

.field private mNewWindowRectPressed:Z

.field private mNewWindow_9:Landroid/graphics/NinePatch;

.field private mOpenAddNewThumbnail:Z

.field private mPageIndicatorLarge:Landroid/graphics/Bitmap;

.field private mPageIndicatorRect:Landroid/graphics/RectF;

.field private mPageIndicatorSmall:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mReset:Z

.field private mRespondToScroll:Z

.field private mScrollAnimation:Z

.field private mScrollAnimationCount:I

.field private mScrollAnimationStartMs:J

.field private mScrollAnimationStartX:I

.field private mScrollAnimationStarted:Z

.field private final mScrollFactor:F

.field private mScrollX:I

.field private mTargetX:I

.field private mThumbnailAnimation:Z

.field private mThumbnailAnimationCount:I

.field private mThumbnailAnimationStartMs:J

.field private mThumbnailAnimationStarted:Z

.field private mThumbnailHeight:I

.field private mThumbnailRect:Landroid/graphics/RectF;

.field private mThumbnailScale:F

.field private mThumbnailScaleHeight:F

.field private mThumbnailScaleWidth:F

.field private mThumbnailWidth:I

.field private mTitlebarBitmap:Landroid/graphics/Bitmap;

.field private mV0Spacing:I

.field private mV1Spacing:I

.field private mV2Spacing:I

.field private mV3Spacing:I

.field private mWidth:I

.field private mZoomAnimation:Z

.field private mZoomAnimationCount:I

.field private mZoomAnimationStartMs:J

.field private mZoomAnimationStarted:Z

.field private mZoomBitmap:Landroid/graphics/Bitmap;

.field mZoomDst:Landroid/graphics/RectF;

.field mZoomEnd:Landroid/graphics/RectF;

.field mZoomStart:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V
    .locals 7
    .parameter "context"
    .parameter "control"

    .prologue
    const v6, 0x7f020005

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 164
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    iput v3, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    .line 87
    iput v3, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    .line 97
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconPressed:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 102
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/android/browser/ActiveTabsPage;->mScrollFactor:F

    .line 104
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    .line 105
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mAddNewThumbnail:Z

    .line 106
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mOpenAddNewThumbnail:Z

    .line 107
    iput v2, p0, Lcom/android/browser/ActiveTabsPage;->mNewThumbnailIndex:I

    .line 110
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationStarted:Z

    .line 111
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z

    .line 112
    iput v3, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationCount:I

    .line 114
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    .line 115
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    .line 116
    iput v3, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationCount:I

    .line 125
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mZoomDst:Landroid/graphics/RectF;

    .line 146
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailRect:Landroid/graphics/RectF;

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    .line 151
    iput v2, p0, Lcom/android/browser/ActiveTabsPage;->mDeleteThumbnailIndex:I

    .line 153
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mReset:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mConfigChanged:Z

    .line 160
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mRespondToScroll:Z

    .line 165
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 166
    iput-object p2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    .line 167
    new-instance v0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;

    invoke-direct {v0, p0}, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGestureListener:Lcom/android/browser/ActiveTabsPage$LearnGestureListener;

    .line 168
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mGestureListener:Lcom/android/browser/ActiveTabsPage$LearnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 169
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGestureListener:Lcom/android/browser/ActiveTabsPage$LearnGestureListener;

    invoke-virtual {v0, p0}, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->setContext(Lcom/android/browser/ActiveTabsPage;)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 173
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIcon:Landroid/graphics/Bitmap;

    .line 177
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconF:Landroid/graphics/Bitmap;

    .line 178
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconP:Landroid/graphics/Bitmap;

    .line 179
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindow:Landroid/graphics/Bitmap;

    .line 180
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020017

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowP:Landroid/graphics/Bitmap;

    .line 181
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowD:Landroid/graphics/Bitmap;

    .line 182
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020079

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBG:Landroid/graphics/Bitmap;

    .line 183
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindow:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindow:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindow_9:Landroid/graphics/NinePatch;

    .line 184
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowP:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowP_9:Landroid/graphics/NinePatch;

    .line 185
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowD:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowD:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowD_9:Landroid/graphics/NinePatch;

    .line 186
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBG:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBG_9:Landroid/graphics/NinePatch;

    .line 187
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBlankBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 188
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBlankBitmap:Landroid/graphics/Bitmap;

    .line 189
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorLarge:Landroid/graphics/Bitmap;

    .line 190
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorSmall:Landroid/graphics/Bitmap;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ActiveTabsPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/browser/ActiveTabsPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/browser/ActiveTabsPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/browser/ActiveTabsPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/browser/ActiveTabsPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mRespondToScroll:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/ActiveTabsPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/browser/ActiveTabsPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/browser/ActiveTabsPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/browser/ActiveTabsPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/browser/ActiveTabsPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/ActiveTabsPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/browser/ActiveTabsPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/browser/ActiveTabsPage;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    return v0
.end method

.method static synthetic access$810(Lcom/android/browser/ActiveTabsPage;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/ActiveTabsPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    return v0
.end method

.method private adjustFinalPosition()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ActiveTabsPage.adjustFinalPosition"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 335
    .local v1, tabCount:I
    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    iget v3, p0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    div-int/lit8 v3, v3, 0x2

    div-int v0, v2, v3

    .line 336
    .local v0, i:I
    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    if-gez v2, :cond_2

    .line 337
    iput v4, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    .line 345
    :goto_0
    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    if-lt v2, v1, :cond_0

    .line 346
    sub-int v2, v1, v5

    iput v2, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    .line 348
    :cond_0
    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    iget v3, p0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    .line 349
    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    iget v3, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    if-eq v2, v3, :cond_1

    .line 350
    iput-boolean v5, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    .line 351
    iput-boolean v4, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 355
    :cond_1
    iput-boolean v4, p0, Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z

    .line 356
    return-void

    .line 339
    :cond_2
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    .line 340
    div-int/lit8 v2, v0, 0x2

    iput v2, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    goto :goto_0

    .line 342
    :cond_3
    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    goto :goto_0
.end method

.method private deleteThumbnail(I)V
    .locals 2
    .parameter

    .prologue
    .line 999
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ActiveTabsPage.deleteThumbnail"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    iput p1, p0, Lcom/android/browser/ActiveTabsPage;->mDeleteThumbnailIndex:I

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z

    .line 1002
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationCount:I

    .line 1003
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 1004
    return-void
.end method

.method private doneZoomAnimation()V
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 796
    :goto_0
    return-void

    .line 790
    :cond_0
    new-instance v0, Lcom/android/browser/ActiveTabsPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/ActiveTabsPage$1;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/ActiveTabsPage;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private drawThumbnail(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 4
    .parameter "canvas"
    .parameter "bm"
    .parameter "dst"
    .parameter "paint"

    .prologue
    const/4 v3, 0x0

    .line 360
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mBlankBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 366
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public addNewThumbnail()Lcom/android/browser/Tab;
    .locals 4

    .prologue
    .line 1008
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ActiveTabsPage.addNewThumbnail++"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1010
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/browser/BrowserActivity;->EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    .line 1013
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewThumbnailIndex:I

    .line 1016
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 1018
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "addNewThumbnail, a tab is created"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1019
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/ActiveTabsPage;->mOpenAddNewThumbnail:Z

    .line 1021
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewThumbnail, mTargetX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScrollX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNewThumbnailIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/ActiveTabsPage;->mNewThumbnailIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 1026
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ActiveTabsPage.addNewThumbnail--"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1027
    return-object v0
.end method

.method getRectByIndex(I)Landroid/graphics/RectF;
    .locals 2
    .parameter "i"

    .prologue
    .line 390
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 391
    .local v0, r:Landroid/graphics/RectF;
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ActiveTabsPage;->getRectByIndex(ILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method getRectByIndex(ILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2
    .parameter "i"
    .parameter "r"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 398
    const/high16 v0, 0x4296

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 399
    mul-int/lit16 v0, p1, 0x124

    add-int/lit8 v0, v0, 0x73

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 400
    iget v0, p2, Landroid/graphics/RectF;->top:F

    const/high16 v1, 0x43c6

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 401
    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x437a

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 410
    :goto_0
    return-object p2

    .line 404
    :cond_0
    const/high16 v0, 0x41c8

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 405
    mul-int/lit16 v0, p1, 0x17c

    add-int/lit16 v0, v0, 0xf5

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 406
    iget v0, p2, Landroid/graphics/RectF;->top:F

    const/high16 v1, 0x4346

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 407
    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x439b

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method init(ILandroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "index"
    .parameter "zoomBM"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "tbBM"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ActiveTabsPage.init"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mReset:Z

    .line 200
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationStarted:Z

    .line 201
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    .line 203
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mOpenAddNewThumbnail:Z

    .line 204
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    .line 207
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    .line 208
    iput p1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    .line 209
    iput-object p2, p0, Lcom/android/browser/ActiveTabsPage;->mZoomBitmap:Landroid/graphics/Bitmap;

    .line 210
    iput-object p3, p0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    .line 211
    iput-object p4, p0, Lcom/android/browser/ActiveTabsPage;->mZoomEnd:Landroid/graphics/RectF;

    .line 212
    iput-object p5, p0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    .line 213
    return-void
.end method

.method leaveActiveTabsPage(I)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 1037
    .line 1038
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserActivity;->setCurrentTabIndex(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v1

    .line 1047
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1048
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 1049
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 1050
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1051
    if-nez v3, :cond_0

    .line 1060
    :goto_0
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1062
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1063
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 1064
    iget v4, p0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 1065
    int-to-float v4, v1

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 1066
    iget v4, p0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 1069
    new-instance v1, Lcom/android/browser/TitleBar;

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-direct {v1, v4}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 1076
    iget v4, p0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/browser/TitleBar;->measure(II)V

    .line 1078
    iget v4, p0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v5

    invoke-virtual {v1, v6, v6, v4, v5}, Lcom/android/browser/TitleBar;->layout(IIII)V

    .line 1080
    iget v4, p0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1081
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1082
    invoke-virtual {v1, v4}, Lcom/android/browser/TitleBar;->draw(Landroid/graphics/Canvas;)V

    .line 1084
    iput-boolean v6, p0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationStarted:Z

    .line 1085
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    .line 1086
    iput-boolean v6, p0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    .line 1087
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->resetOrientation()V

    .line 1088
    iput-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mZoomBitmap:Landroid/graphics/Bitmap;

    .line 1089
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1090
    invoke-virtual {p0, v6}, Lcom/android/browser/ActiveTabsPage;->getRectByIndex(I)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    .line 1094
    :goto_1
    iput-object v3, p0, Lcom/android/browser/ActiveTabsPage;->mZoomEnd:Landroid/graphics/RectF;

    .line 1095
    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    .line 1096
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 1097
    return-void

    .line 1054
    :cond_0
    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_0

    .line 1056
    :cond_1
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mBlankBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1092
    :cond_2
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ActiveTabsPage.onConfigurationChanged"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1101
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1102
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mReset:Z

    .line 1103
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mConfigChanged:Z

    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 1107
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 1108
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9

    .line 1124
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8

    .line 1125
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    .line 1126
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 1127
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 1128
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1129
    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowD:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 1130
    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 1131
    :goto_7
    :try_start_8
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorLarge:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 1132
    :goto_8
    :try_start_9
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 1133
    :goto_9
    return-void

    .line 1132
    :catch_0
    move-exception v0

    goto :goto_9

    .line 1131
    :catch_1
    move-exception v0

    goto :goto_8

    .line 1130
    :catch_2
    move-exception v0

    goto :goto_7

    .line 1129
    :catch_3
    move-exception v0

    goto :goto_6

    .line 1128
    :catch_4
    move-exception v0

    goto :goto_5

    .line 1127
    :catch_5
    move-exception v0

    goto :goto_4

    .line 1126
    :catch_6
    move-exception v0

    goto :goto_3

    .line 1125
    :catch_7
    move-exception v0

    goto :goto_2

    .line 1124
    :catch_8
    move-exception v0

    goto :goto_1

    .line 1123
    :catch_9
    move-exception v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mReset:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 424
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "first ActiveTabsPage.onDraw"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mReset:Z

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->getHeight()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->getWidth()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v6, v0

    if-le v5, v6, :cond_4

    .line 429
    const/16 v5, 0x18c

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    .line 430
    const/16 v5, 0xfa

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    .line 431
    const/16 v5, 0x124

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    .line 432
    const/16 v5, 0x4b

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    .line 433
    const/16 v5, 0x20

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mV1Spacing:I

    .line 434
    const/16 v5, 0x30

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mV2Spacing:I

    .line 435
    const/16 v5, 0x14

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mV3Spacing:I

    .line 436
    const/16 v5, 0x73

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mH0Spacing:I

    .line 437
    const/16 v5, 0x2a

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mH1Spacing:I

    .line 438
    const v5, 0x3f051eb8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailScale:F

    .line 439
    const v5, 0x3f051eb8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleWidth:F

    .line 440
    const v5, 0x3f051eb8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleHeight:F

    .line 441
    const/16 v5, 0x42

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mBlockNewWindow:I

    .line 457
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    move v6, v0

    mul-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mDisplayWidth:I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mDisplayHeight:I

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mDisplayWidth:I

    move v5, v0

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mDisplayHeight:I

    move v6, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mDisplayRatio:F

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    move v6, v0

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v6, v0

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x42b2

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mBlockNewWindow:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    move v6, v0

    const/16 v7, 0x59

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mBlockNewWindow:I

    move v6, v0

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIcon:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mH0Spacing:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIcon:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    move v7, v0

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    move v7, v0

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->updateBitmap()V

    .line 495
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first ActiveTabsPage.onDraw, after update bitmap, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  Rotation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 499
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    move v5, v0

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getLandscapeOnly()Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getRequestedOrientation()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/browser/BrowserActivity;->setRequestedOrientation(I)V

    .line 504
    :cond_1
    const/high16 v5, -0x100

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v24

    .line 510
    .local v24, tabCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    move v5, v0

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    .line 514
    .local v14, dst:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationCount:I

    .line 516
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationStarted:Z

    move v5, v0

    if-nez v5, :cond_2

    .line 517
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationStarted:Z

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationStartMs:J

    .line 519
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationCount:I

    .line 521
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationStartMs:J

    move-wide v7, v0

    sub-long v17, v5, v7

    .line 522
    .local v17, elapsed:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    cmp-long v5, v17, v5

    if-lez v5, :cond_3

    .line 523
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide/from16 v17, v0

    .line 526
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    long-to-int v5, v5

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v6, v0

    const/16 v7, 0x2710

    invoke-static {v5, v6, v7}, Lcom/android/browser/Kinetic;->getScrollPosDecelFromBottom(III)I

    move-result v22

    .line 529
    .local v22, ratio_int:I
    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    const v6, 0x461c4000

    div-float v21, v5, v6

    .line 532
    .local v21, ratio:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mDeleteThumbnailIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ActiveTabsPage;->getRectByIndex(ILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v20

    .line 534
    .local v20, r:Landroid/graphics/RectF;
    const/high16 v5, 0x3f80

    sub-float v5, v5, v21

    const/high16 v6, 0x3f80

    sub-float v6, v6, v21

    iget v7, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    move v8, v0

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    move v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mDeleteThumbnailIndex:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v20

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/ActiveTabsPage;->drawThumbnail(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 539
    const/4 v5, 0x1

    sub-int v19, v24, v5

    .local v19, i:I
    :goto_1
    if-ltz v19, :cond_7

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mDeleteThumbnailIndex:I

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 539
    :goto_2
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 443
    .end local v14           #dst:Landroid/graphics/RectF;
    .end local v17           #elapsed:J
    .end local v19           #i:I
    .end local v20           #r:Landroid/graphics/RectF;
    .end local v21           #ratio:F
    .end local v22           #ratio_int:I
    .end local v24           #tabCount:I
    :cond_4
    const/16 v5, 0xc6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    .line 444
    const/16 v5, 0x136

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    .line 445
    const/16 v5, 0x17c

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    .line 446
    const/16 v5, 0x19

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    .line 447
    const/16 v5, 0x20

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mV1Spacing:I

    .line 448
    const/16 v5, 0xf

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mV2Spacing:I

    .line 449
    const/16 v5, 0xf

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mV3Spacing:I

    .line 450
    const/16 v5, 0xf5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mH0Spacing:I

    .line 451
    const/16 v5, 0x46

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mH1Spacing:I

    .line 452
    const v5, 0x3ecccccd

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailScale:F

    .line 453
    const v5, 0x3ecccccd

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleWidth:F

    .line 454
    const v5, 0x3f051eb8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleHeight:F

    .line 455
    const/16 v5, 0x84

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mBlockNewWindow:I

    goto/16 :goto_0

    .line 543
    .restart local v14       #dst:Landroid/graphics/RectF;
    .restart local v17       #elapsed:J
    .restart local v19       #i:I
    .restart local v20       #r:Landroid/graphics/RectF;
    .restart local v21       #ratio:F
    .restart local v22       #ratio_int:I
    .restart local v24       #tabCount:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mDeleteThumbnailIndex:I

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-le v0, v1, :cond_6

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    move v5, v0

    neg-int v5, v5

    int-to-float v15, v5

    .line 547
    .local v15, dx:F
    const/16 v16, 0x0

    .line 548
    .local v16, dy:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 549
    mul-float v5, v15, v21

    mul-float v6, v16, v21

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ActiveTabsPage;->getRectByIndex(ILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/ActiveTabsPage;->drawThumbnail(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 553
    .end local v15           #dx:F
    .end local v16           #dy:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ActiveTabsPage;->getRectByIndex(ILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/ActiveTabsPage;->drawThumbnail(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 557
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    cmp-long v5, v17, v5

    if-ltz v5, :cond_8

    .line 558
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z

    .line 559
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationStarted:Z

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mDeleteThumbnailIndex:I

    move v7, v0

    invoke-virtual {v6, v7}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 562
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thumbnail animation fps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimationCount:I

    move v7, v0

    int-to-float v7, v7

    const/high16 v8, 0x447a

    mul-float/2addr v7, v8

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move v8, v0

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->adjustFinalPosition()V

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 589
    .end local v17           #elapsed:J
    .end local v20           #r:Landroid/graphics/RectF;
    .end local v21           #ratio:F
    .end local v22           #ratio_int:I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 592
    const/16 v12, 0xff

    .line 593
    .local v12, c:I
    const/16 v19, 0x0

    :goto_3
    const/16 v5, 0xf

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_c

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    shl-int/lit8 v6, v12, 0x18

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    move v5, v0

    const/4 v7, 0x3

    sub-int/2addr v5, v7

    int-to-float v7, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    move v9, v0

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x3

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v5, v0

    sub-int v5, v5, v19

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    move v5, v0

    const/4 v7, 0x3

    sub-int/2addr v5, v7

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v5, v0

    sub-int v5, v5, v19

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    move v9, v0

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x3

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 597
    const/16 v5, 0x11

    sub-int/2addr v12, v5

    .line 593
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 567
    .end local v12           #c:I
    .end local v19           #i:I
    :cond_9
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 568
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ActiveTabsPage;->getRectByIndex(ILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v20

    .line 571
    .restart local v20       #r:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v20

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/ActiveTabsPage;->drawThumbnail(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 574
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    move v5, v0

    if-nez v5, :cond_a

    const/4 v5, 0x1

    move/from16 v0, v24

    move v1, v5

    if-le v0, v1, :cond_a

    .line 575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIcon:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v14, Landroid/graphics/RectF;->top:F

    .line 576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mH0Spacing:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    move v6, v0

    mul-int v6, v6, v19

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIcon:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v14, Landroid/graphics/RectF;->left:F

    .line 577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_a

    .line 578
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconPressed:Z

    move v5, v0

    if-eqz v5, :cond_b

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconP:Landroid/graphics/Bitmap;

    move-object v5, v0

    iget v6, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 567
    :cond_a
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 581
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mCloseIconF:Landroid/graphics/Bitmap;

    move-object v5, v0

    iget v6, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 601
    .end local v20           #r:Landroid/graphics/RectF;
    .restart local v12       #c:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV3Spacing:I

    move v6, v0

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v14, Landroid/graphics/RectF;->top:F

    .line 602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v24, 0x2d

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v14, Landroid/graphics/RectF;->left:F

    .line 603
    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorLarge:Landroid/graphics/Bitmap;

    move-object v5, v0

    iget v6, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x4180

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v19, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorLarge:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorLarge:Landroid/graphics/Bitmap;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x4040

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 614
    :goto_7
    iget v5, v14, Landroid/graphics/RectF;->left:F

    const/high16 v6, 0x4234

    add-float/2addr v5, v6

    iput v5, v14, Landroid/graphics/RectF;->left:F

    .line 603
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 611
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorSmall:Landroid/graphics/Bitmap;

    move-object v5, v0

    iget v6, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 619
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v13

    .line 620
    .local v13, currentTab:Lcom/android/browser/Tab;
    invoke-virtual {v13}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    move v5, v0

    const/16 v6, 0x59

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV2Spacing:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV1Spacing:I

    move v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v14, Landroid/graphics/RectF;->top:F

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, v14, Landroid/graphics/RectF;->left:F

    .line 623
    invoke-virtual {v13}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x41e0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    invoke-virtual {v13}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v13}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mH1Spacing:I

    move v11, v0

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v8

    iget v9, v14, Landroid/graphics/RectF;->left:F

    iget v10, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 630
    :cond_f
    iget v5, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mV1Spacing:I

    move v6, v0

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v14, Landroid/graphics/RectF;->top:F

    .line 631
    invoke-virtual {v13}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x41a8

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const v6, -0x7e4101

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    invoke-virtual {v13}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v13}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mH1Spacing:I

    move v11, v0

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v8

    iget v9, v14, Landroid/graphics/RectF;->left:F

    iget v10, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 640
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    move v5, v0

    if-nez v5, :cond_11

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBG_9:Landroid/graphics/NinePatch;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 645
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    move v5, v0

    if-eqz v5, :cond_1b

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowP_9:Landroid/graphics/NinePatch;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const v6, -0x4c4c4d

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 654
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x41c0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x4230

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 668
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    move v5, v0

    if-eqz v5, :cond_17

    .line 669
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationStarted:Z

    move v5, v0

    if-nez v5, :cond_12

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationStartMs:J

    .line 671
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationStarted:Z

    .line 672
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationCount:I

    .line 675
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationStartMs:J

    move-wide v7, v0

    sub-long v17, v5, v7

    .line 676
    .restart local v17       #elapsed:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    cmp-long v5, v17, v5

    if-lez v5, :cond_13

    .line 677
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide/from16 v17, v0

    .line 680
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_15

    .line 681
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    long-to-int v5, v5

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v6, v0

    const/16 v7, 0x2710

    invoke-static {v5, v6, v7}, Lcom/android/browser/Kinetic;->getScrollPosDecelFromBottom(III)I

    move-result v22

    .line 684
    .restart local v22       #ratio_int:I
    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    const v6, 0x461c4000

    div-float v21, v5, v6

    .line 685
    .restart local v21       #ratio:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomDst:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomEnd:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomDst:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomEnd:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomDst:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomEnd:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomDst:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomEnd:Landroid/graphics/RectF;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomStart:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 690
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    cmp-long v5, v17, v5

    if-ltz v5, :cond_1e

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomDst:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/ActiveTabsPage;->drawThumbnail(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_14

    .line 693
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    move v5, v0

    if-eqz v5, :cond_1d

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v6, 0x0

    move/from16 v0, v21

    neg-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 715
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationCount:I

    .line 717
    .end local v21           #ratio:F
    .end local v22           #ratio_int:I
    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    cmp-long v5, v17, v5

    if-ltz v5, :cond_17

    .line 718
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    .line 719
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->doneZoomAnimation()V

    .line 722
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    move v5, v0

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mOpenAddNewThumbnail:Z

    move v5, v0

    if-eqz v5, :cond_21

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v23

    .line 724
    .local v23, tCount:I
    if-lez v23, :cond_20

    const/16 v5, 0x9

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_20

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewThumbnailIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    move v6, v0

    mul-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    .line 726
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    .line 727
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 733
    :goto_b
    const-string v5, "browser.ActiveTabsPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check ScrollAnimation after adjustFinalPosition, mScrollX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "tCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v23           #tCount:I
    :cond_16
    :goto_c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Zoom animation FPS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationCount:I

    move v7, v0

    int-to-float v7, v7

    const/high16 v8, 0x447a

    mul-float/2addr v7, v8

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move v8, v0

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 744
    .end local v17           #elapsed:J
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    move v5, v0

    if-eqz v5, :cond_24

    .line 745
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    move v5, v0

    if-nez v5, :cond_18

    .line 746
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStartMs:J

    .line 748
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationCount:I

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStartX:I

    .line 751
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationCount:I

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStartMs:J

    move-wide v7, v0

    sub-long v17, v5, v7

    .line 753
    .restart local v17       #elapsed:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    cmp-long v5, v17, v5

    if-lez v5, :cond_19

    .line 754
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide/from16 v17, v0

    .line 756
    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    move-wide v5, v0

    long-to-int v5, v5

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v6, v0

    const/16 v7, 0x2710

    invoke-static {v5, v6, v7}, Lcom/android/browser/Kinetic;->getScrollPosDecelFromBottom(III)I

    move-result v22

    .line 759
    .restart local v22       #ratio_int:I
    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    const v6, 0x461c4000

    div-float v21, v5, v6

    .line 760
    .restart local v21       #ratio:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    move v6, v0

    if-ne v5, v6, :cond_23

    .line 761
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    .line 762
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    .line 763
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scroll animation fps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationCount:I

    move v7, v0

    int-to-float v7, v7

    const/high16 v8, 0x447a

    mul-float/2addr v7, v8

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move v8, v0

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    move v5, v0

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mOpenAddNewThumbnail:Z

    move v5, v0

    if-eqz v5, :cond_22

    .line 766
    const-wide/16 v5, 0x12c

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    .line 767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewThumbnailIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/ActiveTabsPage;->leaveActiveTabsPage(I)V

    .line 784
    .end local v17           #elapsed:J
    .end local v21           #ratio:F
    .end local v22           #ratio_int:I
    :cond_1a
    :goto_d
    return-void

    .line 650
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindow_9:Landroid/graphics/NinePatch;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_8

    .line 659
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBG_9:Landroid/graphics/NinePatch;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowD_9:Landroid/graphics/NinePatch;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x41c0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewWindowBGRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x4230

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 696
    .restart local v17       #elapsed:J
    .restart local v21       #ratio:F
    .restart local v22       #ratio_int:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomEnd:Landroid/graphics/RectF;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 701
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomDst:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/ActiveTabsPage;->drawThumbnail(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_14

    .line 704
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    move v5, v0

    if-eqz v5, :cond_1f

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v6, 0x0

    move/from16 v0, v21

    neg-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationCount:I

    move v5, v0

    if-nez v5, :cond_14

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBarWithoutAnimation()V

    goto/16 :goto_a

    .line 710
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mTitlebarBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomEnd:Landroid/graphics/RectF;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 731
    .end local v21           #ratio:F
    .end local v22           #ratio_int:I
    .restart local v23       #tCount:I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mNewThumbnailIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/ActiveTabsPage;->leaveActiveTabsPage(I)V

    goto/16 :goto_b

    .line 734
    .end local v23           #tCount:I
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mOpenAddNewThumbnail:Z

    move v5, v0

    if-eqz v5, :cond_16

    .line 735
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/ActiveTabsPage;->mOpenAddNewThumbnail:Z

    goto/16 :goto_c

    .line 769
    .restart local v21       #ratio:F
    .restart local v22       #ratio_int:I
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto/16 :goto_d

    .line 774
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStartX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStartX:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v21

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    .line 777
    .end local v17           #elapsed:J
    .end local v21           #ratio:F
    .end local v22           #ratio_int:I
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z

    move v5, v0

    if-eqz v5, :cond_25

    .line 778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    .line 781
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    move v5, v0

    if-nez v5, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z

    move v5, v0

    if-nez v5, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z

    move v5, v0

    if-nez v5, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    move v5, v0

    if-eqz v5, :cond_1a

    .line 782
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto/16 :goto_d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 274
    const-string v0, "browser.ActiveTabsPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 216
    const-string v1, "browser.ActiveTabsPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sparse-switch p1, :sswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return v4

    .line 219
    :sswitch_0
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iput-boolean v4, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto :goto_0

    .line 226
    :sswitch_1
    iput-boolean v5, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto :goto_0

    .line 230
    :sswitch_2
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 231
    .local v0, tabCount:I
    iget-boolean v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    if-nez v1, :cond_0

    .line 233
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    .line 234
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    if-lt v1, v0, :cond_1

    .line 235
    sub-int v1, v0, v4

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    .line 236
    :cond_1
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    .line 237
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    if-eq v1, v2, :cond_0

    .line 238
    iput-boolean v4, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    .line 239
    iput-boolean v5, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    .line 240
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto :goto_0

    .line 245
    .end local v0           #tabCount:I
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    if-nez v1, :cond_0

    .line 247
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    .line 248
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    if-gez v1, :cond_2

    .line 249
    iput v5, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    .line 250
    :cond_2
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    .line 251
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    if-eq v1, v2, :cond_0

    .line 252
    iput-boolean v4, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    .line 253
    iput-boolean v5, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    .line 254
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto :goto_0

    .line 260
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    if-eqz v1, :cond_3

    .line 262
    iput-boolean v5, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 263
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/ActiveTabsPage;->leaveActiveTabsPage(I)V

    goto :goto_0

    .line 264
    :cond_3
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 266
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    invoke-virtual {p0, v1}, Lcom/android/browser/ActiveTabsPage;->leaveActiveTabsPage(I)V

    goto/16 :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "YP-G70"

    .line 938
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp, mScrollAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 939
    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 944
    invoke-virtual {p0, v3}, Lcom/android/browser/ActiveTabsPage;->leaveActiveTabsPage(I)V

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    invoke-direct {p0, v0}, Lcom/android/browser/ActiveTabsPage;->deleteThumbnail(I)V

    goto :goto_0

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 953
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mH0Spacing:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 954
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 955
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 956
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 957
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 959
    const-string v0, "YP-G70"

    const-string v0, "YP-G70"

    invoke-virtual {v4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "YP-G70"

    const-string v0, "YP-GB70"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 960
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/browser/ActiveTabsPage;->playSoundEffect(I)V

    .line 962
    :cond_4
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    invoke-virtual {p0, v0}, Lcom/android/browser/ActiveTabsPage;->leaveActiveTabsPage(I)V

    goto :goto_0

    .line 968
    :cond_5
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 969
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/ActiveTabsPage;->leaveActiveTabsPage(I)V

    goto/16 :goto_0

    .line 976
    :cond_6
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mV0Spacing:I

    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/ActiveTabsPage;->mV3Spacing:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 977
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2d

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 978
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorLarge:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 979
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2d

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 981
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4234

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 985
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    if-eq v1, v0, :cond_7

    .line 986
    iput v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    .line 988
    :cond_7
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I

    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    .line 989
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mTargetX:I

    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mScrollX:I

    if-eq v0, v1, :cond_0

    .line 990
    iput-boolean v5, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    .line 991
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z

    .line 992
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    if-eqz v0, :cond_0

    move v0, v4

    .line 328
    :goto_0
    return v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    const/16 v2, 0x59

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 289
    iput-boolean v4, p0, Lcom/android/browser/ActiveTabsPage;->mRespondToScroll:Z

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    iput-boolean v4, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 297
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 308
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 309
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconPressed:Z

    .line 310
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 314
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconPressed:Z

    .line 315
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 316
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    invoke-virtual {p0, v3}, Lcom/android/browser/ActiveTabsPage;->playSoundEffect(I)V

    .line 321
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/ActiveTabsPage;->adjustFinalPosition()V

    .line 322
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 326
    goto :goto_0

    .line 291
    :cond_5
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mRespondToScroll:Z

    goto :goto_1

    .line 299
    :cond_6
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowRectPressed:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto :goto_2

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iput-boolean v4, p0, Lcom/android/browser/ActiveTabsPage;->mCloseIconPressed:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    goto :goto_2

    :cond_8
    move v0, v3

    .line 328
    goto/16 :goto_0
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1111
    const-string v0, "browser.ActiveTabsPage"

    const-string v1, "stopAnimation is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mOpenAddNewThumbnail:Z

    .line 1113
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/browser/ActiveTabsPage;->mAnimationTimeLength:J

    .line 1114
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimationStarted:Z

    .line 1115
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mZoomAnimation:Z

    .line 1116
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    .line 1117
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z

    .line 1118
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z

    .line 1119
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z

    .line 1120
    return-void
.end method

.method declared-synchronized updateBitmap()V
    .locals 14

    .prologue
    const v13, 0x3fd9999a

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 799
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "updateBitmap start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v10

    .line 800
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 804
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 805
    invoke-virtual {v1}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 806
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 807
    if-nez v2, :cond_0

    .line 800
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 814
    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    if-le v4, v5, :cond_4

    move v4, v11

    .line 820
    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 821
    :cond_1
    iget v3, p0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScale:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, p0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 822
    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage;->mBlankBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 831
    :cond_2
    :goto_3
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 832
    if-ne v4, v11, :cond_8

    .line 833
    iget v6, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleWidth:F

    const v7, 0x3fd70a3d

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleHeight:F

    const v8, 0x3f8f5c29

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 840
    :goto_4
    iget-object v6, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v6}, Lcom/android/browser/BrowserActivity;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v6

    .line 841
    invoke-virtual {v6}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v6

    .line 842
    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v7

    sub-int v6, v7, v6

    .line 843
    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 844
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "grab screen of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 845
    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/webkit/WebView;->userScalable()Z

    move-result v7

    if-nez v7, :cond_a

    .line 846
    :cond_3
    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v7

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/webkit/WebView;->grabScreen(Landroid/graphics/Canvas;IIF)V

    .line 855
    :goto_5
    invoke-virtual {v1, v3}, Lcom/android/browser/Tab;->setThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 816
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    if-ge v4, v5, :cond_d

    move v4, v12

    .line 817
    goto/16 :goto_2

    .line 823
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-eq v5, v6, :cond_2

    .line 824
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 825
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 826
    :cond_7
    iget v3, p0, Lcom/android/browser/ActiveTabsPage;->mWidth:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScale:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, p0, Lcom/android/browser/ActiveTabsPage;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_3

    .line 834
    :cond_8
    if-ne v4, v12, :cond_9

    .line 835
    iget v6, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleWidth:F

    div-float/2addr v6, v13

    iget v7, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleHeight:F

    div-float/2addr v7, v13

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_4

    .line 837
    :cond_9
    iget v6, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleWidth:F

    iget v7, p0, Lcom/android/browser/ActiveTabsPage;->mThumbnailScaleHeight:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_4

    .line 847
    :cond_a
    if-ne v4, v12, :cond_b

    .line 848
    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v7

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/webkit/WebView;->grabScreen(Landroid/graphics/Canvas;IIF)V

    goto :goto_5

    .line 851
    :cond_b
    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/android/browser/ActiveTabsPage;->mDisplayRatio:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v6, v6

    iget v7, p0, Lcom/android/browser/ActiveTabsPage;->mDisplayRatio:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v7

    iget v8, p0, Lcom/android/browser/ActiveTabsPage;->mDisplayRatio:F

    mul-float/2addr v7, v8

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/webkit/WebView;->grabScreen(Landroid/graphics/Canvas;IIF)V

    goto/16 :goto_5

    .line 858
    :cond_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "updateBitmap end"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    monitor-exit p0

    return-void

    :cond_d
    move v4, v10

    goto/16 :goto_2
.end method

.class public Lcom/android/browser/TitleBar;
.super Landroid/widget/LinearLayout;
.source "TitleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/TitleBar$1;,
        Lcom/android/browser/TitleBar$MyHandler;
    }
.end annotation


# static fields
.field private static LONG_PRESS:I

.field public static mDisableGenerationCounting:Z

.field public static mGeneration:J


# instance fields
.field private mArcsSpan:Landroid/text/style/ImageSpan;

.field private mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private mCircularProgress:Landroid/graphics/drawable/Drawable;

.field private mFavicon:Landroid/widget/ImageView;

.field private mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field private mHandler:Lcom/android/browser/TitleBar$MyHandler;

.field private mHorizontalProgress:Landroid/widget/ProgressBar;

.field private mIconDimension:I

.field private mInLoad:Z

.field private mInVoiceMode:Z

.field private mLeftMargin:I

.field private mLoadingBackground:Landroid/graphics/drawable/Drawable;

.field private mLockIcon:Landroid/widget/ImageView;

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field private mRightMargin:I

.field private mRssIcon:Landroid/widget/ImageView;

.field private mRtButton:Landroid/widget/ImageView;

.field private mStopButton:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleBg:Landroid/view/View;

.field private mVoiceDrawable:Landroid/graphics/drawable/Drawable;

.field private mVoiceModeBackground:Landroid/graphics/drawable/Drawable;

.field private mVoiceSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    sput v0, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 89
    invoke-direct {p0, p1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v5, Lcom/android/browser/TitleBar$MyHandler;

    invoke-direct {v5, p0, v10}, Lcom/android/browser/TitleBar$MyHandler;-><init>(Lcom/android/browser/TitleBar;Lcom/android/browser/TitleBar$1;)V

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030028

    invoke-virtual {v0, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    iput-object p1, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 95
    const v5, 0x7f0d0007

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    .line 96
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 98
    const v5, 0x7f0d0089

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    .line 99
    const v5, 0x7f0d008a

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    .line 100
    const v5, 0x7f0d008b

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    .line 101
    const v5, 0x7f0d0006

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mFavicon:Landroid/widget/ImageView;

    .line 102
    const v5, 0x7f0d008c

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    .line 104
    const v5, 0x7f0d008d

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    .local v3, resources:Landroid/content/res/Resources;
    const v5, 0x1080292

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 109
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const/high16 v5, 0x4100

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    .line 111
    const/high16 v5, 0x40c0

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    .line 113
    const/high16 v5, 0x41a0

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/browser/TitleBar;->mIconDimension:I

    .line 115
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/browser/TitleBar;->mIconDimension:I

    iget v7, p0, Lcom/android/browser/TitleBar;->mIconDimension:I

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    const v5, 0x7f0d0088

    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    .line 118
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 120
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 121
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const-string v6, "android.speech.extra.LANGUAGE_MODEL"

    const-string v7, "web_search"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const-string v6, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 129
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const/high16 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 131
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_0

    .line 132
    iput-object v10, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 137
    :goto_0
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    const v5, 0x7f020077

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceModeBackground:Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 141
    const v5, 0x7f020075

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mLoadingBackground:Landroid/graphics/drawable/Drawable;

    .line 142
    new-instance v5, Landroid/text/style/ImageSpan;

    const v6, 0x7f020003

    invoke-direct {v5, p1, v6, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mArcsSpan:Landroid/text/style/ImageSpan;

    .line 144
    return-void

    .line 134
    :cond_0
    const v5, 0x10800a4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/TitleBar;->mVoiceDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/TitleBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/TitleBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/TitleBar;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 164
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 165
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v2}, Lcom/android/browser/BrowserActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 166
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 182
    sget-boolean v0, Lcom/android/browser/TitleBar;->mDisableGenerationCounting:Z

    if-nez v0, :cond_0

    .line 183
    sget-wide v0, Lcom/android/browser/TitleBar;->mGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/browser/TitleBar;->mGeneration:J

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->initZoomView()V

    .line 192
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 170
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 171
    sget-boolean v0, Lcom/android/browser/TitleBar;->mDisableGenerationCounting:Z

    if-nez v0, :cond_0

    .line 172
    sget-wide v0, Lcom/android/browser/TitleBar;->mGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/browser/TitleBar;->mGeneration:J

    .line 174
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v10, "extra_event"

    const-string v8, "com.android.common.speech.LOG_EVENT"

    .line 196
    iget-boolean v5, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    move-object v0, v5

    .line 197
    .local v0, button:Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 289
    :cond_0
    :goto_1
    return v9

    .line 196
    .end local v0           #button:Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    move-object v0, v5

    goto :goto_0

    .line 202
    .restart local v0       #button:Landroid/widget/ImageView;
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 203
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_1

    .line 204
    :cond_2
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getProgress()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 205
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 209
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 210
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    iget-object v6, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v7, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v6, v7}, Lcom/android/browser/TitleBar$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/browser/TitleBar$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 216
    :pswitch_1
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 218
    .local v2, slop:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    if-le v5, v6, :cond_4

    .line 222
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    .line 223
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 224
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 225
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v6, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v5, v6}, Lcom/android/browser/TitleBar$MyHandler;->removeMessages(I)V

    goto/16 :goto_1

    .line 228
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v4, v5

    .line 229
    .local v4, x:I
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 230
    .local v3, titleRight:I
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_5

    add-int v5, v3, v2

    if-le v4, v5, :cond_5

    .line 231
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    .line 232
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 233
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v6, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v5, v6}, Lcom/android/browser/TitleBar$MyHandler;->removeMessages(I)V

    goto/16 :goto_1

    .line 234
    :cond_5
    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_6

    sub-int v5, v3, v2

    if-ge v4, v5, :cond_6

    .line 235
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_1

    .line 236
    :cond_6
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_1

    .line 241
    .end local v2           #slop:I
    .end local v3           #titleRight:I
    .end local v4           #x:I
    :pswitch_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 242
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    .line 243
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 244
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v6, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v5, v6}, Lcom/android/browser/TitleBar$MyHandler;->removeMessages(I)V

    goto/16 :goto_1

    .line 247
    :pswitch_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 248
    iget-boolean v5, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v5, :cond_8

    .line 249
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, i:Landroid/content/Intent;
    const-string v5, "extra_event"

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5, v1}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    .end local v1           #i:Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v6, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 263
    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_1

    .line 258
    :cond_8
    iget-boolean v5, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-eqz v5, :cond_9

    .line 259
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto :goto_2

    .line 261
    :cond_9
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5, v7}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto :goto_2

    .line 264
    :cond_a
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 265
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->displayRssLinks()V

    .line 266
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_1

    .line 267
    :cond_b
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mHandler:Lcom/android/browser/TitleBar$MyHandler;

    sget v6, Lcom/android/browser/TitleBar;->LONG_PRESS:I

    invoke-virtual {v5, v6}, Lcom/android/browser/TitleBar$MyHandler;->removeMessages(I)V

    .line 269
    iget-boolean v5, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v5, :cond_d

    .line 270
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 272
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v1       #i:Landroid/content/Intent;
    const-string v5, "extra_event"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5, v1}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    .end local v1           #i:Landroid/content/Intent;
    :cond_c
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    iget-object v6, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/browser/BrowserActivity;->showVoiceSearchResults(Ljava/lang/String;)V

    .line 283
    :goto_3
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    .line 281
    :cond_d
    iget-object v5, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->editUrl()V

    goto :goto_3

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 5
    .parameter "title"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v2, :cond_1

    .line 426
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 427
    .local v1, spannable:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 428
    .local v0, end:I
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mArcsSpan:Landroid/text/style/ImageSpan;

    const/4 v3, 0x1

    sub-int v3, v0, v3

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 430
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 432
    .end local v0           #end:I
    .end local v1           #spannable:Landroid/text/SpannableString;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 296
    const/4 v2, 0x3

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 297
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v4, -0x100

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    aput-object v3, v6, v2

    .line 298
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 299
    .local v7, p:Landroid/graphics/drawable/PaintDrawable;
    aput-object v7, v6, v1

    .line 300
    if-nez p1, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v8

    .line 305
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 306
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    .line 307
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 308
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    return-void

    .line 303
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v8

    goto :goto_0
.end method

.method setInVoiceMode(Z)V
    .locals 8
    .parameter "inVoiceMode"

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 316
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-ne v1, p1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    move v1, v7

    :goto_1
    iput-boolean v1, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    .line 319
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/TitleBar;->mVoiceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mVoiceModeBackground:Landroid/graphics/drawable/Drawable;

    .line 322
    .local v0, titleDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 323
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget v2, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    iget-object v3, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    iget-object v5, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 343
    :goto_2
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v2, :cond_4

    move v2, v7

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .end local v0           #titleDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    move v1, v6

    .line 317
    goto :goto_1

    .line 329
    :cond_2
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-eqz v1, :cond_3

    .line 330
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mLoadingBackground:Landroid/graphics/drawable/Drawable;

    .line 331
    .restart local v0       #titleDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    :goto_4
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 340
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget v2, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    iget v3, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 334
    .end local v0           #titleDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 335
    .restart local v0       #titleDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_4
    move v2, v6

    .line 343
    goto :goto_3
.end method

.method setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method setProgress(I)V
    .locals 6
    .parameter "newProgress"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 377
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {p0, v4}, Lcom/android/browser/TitleBar;->setRss(Z)V

    .line 382
    :goto_0
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget v1, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    iget v2, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 389
    :cond_0
    iput-boolean v3, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    .line 411
    :cond_1
    :goto_1
    return-void

    .line 381
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/browser/TitleBar;->setRss(Z)V

    goto :goto_0

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 392
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mCircularProgress:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 400
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 401
    invoke-virtual {p0, v3}, Lcom/android/browser/TitleBar;->setRss(Z)V

    .line 402
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mLoadingBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;

    iget v1, p0, Lcom/android/browser/TitleBar;->mLeftMargin:I

    iget v2, p0, Lcom/android/browser/TitleBar;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 405
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRtButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    :cond_4
    iput-boolean v4, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    goto :goto_1
.end method

.method setRss(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

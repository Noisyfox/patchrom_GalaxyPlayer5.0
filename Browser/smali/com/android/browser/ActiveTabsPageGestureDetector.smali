.class Lcom/android/browser/ActiveTabsPageGestureDetector;
.super Ljava/lang/Object;
.source "ActiveTabsPageGestureDetector.java"


# static fields
.field private static final ActiveGestureDebug:Z


# instance fields
.field private mBitmapWebView:Lcom/android/browser/BitmapWebView;

.field private mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private mCheckMobilePage:Z

.field private mOldDistance:D

.field private mShouldGoActiveTabsPage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "1"

    const-string v1, "debug.browser.activedebug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/ActiveTabsPageGestureDetector;->ActiveGestureDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;)V
    .locals 2
    .parameter "context"
    .parameter "zoomView"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    check-cast p1, Lcom/android/browser/BrowserActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 48
    iput-object p2, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 49
    iput-boolean v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mShouldGoActiveTabsPage:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mCheckMobilePage:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mOldDistance:D

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ActiveTabsPageGestureDetector;)Lcom/android/browser/BitmapWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ActiveTabsPageGestureDetector;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/ActiveTabsPageGestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mCheckMobilePage:Z

    return v0
.end method


# virtual methods
.method public interceptMotionEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    .line 96
    sget-boolean v8, Lcom/android/browser/ActiveTabsPageGestureDetector;->ActiveGestureDebug:Z

    if-eqz v8, :cond_0

    .line 97
    const-string v8, "ActiveTabsPageGestureDetector"

    const-string v9, "interceptMotionEvent entered"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 100
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 102
    .local v7, orientation:I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 103
    .local v3, nowXMotion0:F
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 104
    .local v5, nowYMotion0:F
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 105
    .local v4, nowXMotion1:F
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 107
    .local v6, nowYMotion1:F
    const-wide/16 v1, 0x0

    .line 109
    .local v1, nowDistance:D
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 110
    :cond_1
    sget-boolean v8, Lcom/android/browser/ActiveTabsPageGestureDetector;->ActiveGestureDebug:Z

    if-eqz v8, :cond_2

    .line 111
    const-string v8, "ActiveTabsPageGestureDetector"

    const-string v9, "interceptMotionEvent:Landscape mode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 114
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 115
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 116
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 119
    :cond_3
    sget-boolean v8, Lcom/android/browser/ActiveTabsPageGestureDetector;->ActiveGestureDebug:Z

    if-eqz v8, :cond_4

    .line 120
    const-string v8, "ActiveTabsPageGestureDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptMotionEvent:nowXMotion0:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",nowYMotion0:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v8, "ActiveTabsPageGestureDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptMotionEvent:nowXMotion1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",nowYMotion1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_4
    iget-boolean v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mShouldGoActiveTabsPage:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_5

    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_5

    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-lez v8, :cond_5

    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_5

    .line 124
    iget-wide v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mOldDistance:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    .line 125
    sub-float v8, v4, v3

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-float v10, v6, v5

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mOldDistance:D

    .line 148
    :cond_5
    :goto_0
    return-void

    .line 127
    :cond_6
    sub-float v8, v4, v3

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-float v10, v6, v5

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 128
    sget-boolean v8, Lcom/android/browser/ActiveTabsPageGestureDetector;->ActiveGestureDebug:Z

    if-eqz v8, :cond_7

    .line 129
    const-string v8, "ActiveTabsPageGestureDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptMotionEvent:mOldDistance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mOldDistance:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",nowDistance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_7
    iget-wide v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mOldDistance:D

    sub-double/2addr v8, v1

    const-wide/high16 v10, 0x402e

    cmpl-double v8, v8, v10

    if-lez v8, :cond_8

    .line 132
    iget-object v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    new-instance v9, Lcom/android/browser/ActiveTabsPageGestureDetector$2;

    invoke-direct {v9, p0}, Lcom/android/browser/ActiveTabsPageGestureDetector$2;-><init>(Lcom/android/browser/ActiveTabsPageGestureDetector;)V

    invoke-virtual {v8, v9}, Lcom/android/browser/BitmapWebView;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mShouldGoActiveTabsPage:Z

    .line 144
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mCheckMobilePage:Z

    .line 145
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mOldDistance:D

    goto :goto_0
.end method

.method public onScaleBegin(FFF)V
    .locals 5
    .parameter "maxScale"
    .parameter "minScale"
    .parameter "beginScale"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "ActiveTabsPageGestureDetector"

    .line 56
    sget-boolean v0, Lcom/android/browser/ActiveTabsPageGestureDetector;->ActiveGestureDebug:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "ActiveTabsPageGestureDetector"

    const-string v0, "onScaleBegin entered"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "ActiveTabsPageGestureDetector"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShouldGoActiveTabsPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mShouldGoActiveTabsPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    cmpl-float v0, p3, p2

    if-nez v0, :cond_1

    .line 62
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mShouldGoActiveTabsPage:Z

    .line 67
    :goto_0
    cmpl-float v0, p2, p1

    if-nez v0, :cond_2

    .line 68
    iput-boolean v3, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mCheckMobilePage:Z

    .line 73
    :goto_1
    return-void

    .line 64
    :cond_1
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mShouldGoActiveTabsPage:Z

    goto :goto_0

    .line 70
    :cond_2
    iput-boolean v2, p0, Lcom/android/browser/ActiveTabsPageGestureDetector;->mCheckMobilePage:Z

    goto :goto_1
.end method

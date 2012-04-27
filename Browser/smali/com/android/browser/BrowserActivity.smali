.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserActivity$UrlData;,
        Lcom/android/browser/BrowserActivity$SetAsWallpaper;,
        Lcom/android/browser/BrowserActivity$Download;,
        Lcom/android/browser/BrowserActivity$Copy;,
        Lcom/android/browser/BrowserActivity$ClearThumbnails;
    }
.end annotation


# static fields
.field protected static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field static final EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

.field static final ENABLE_BITMAPWEBVIEW:Z

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static THUMBNAIL_HEIGHT:I

.field private static THUMBNAIL_WIDTH:I

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I

.field private static mInTrace:Z

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autobright:I

.field private brightToast:Landroid/widget/Toast;

.field mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

.field private mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

.field mActivityInPause:Z

.field mAddFeedUrl:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mBitmapWebView:Lcom/android/browser/BitmapWebView;

.field private mBrightPopup:Landroid/app/AlertDialog;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBrowserFrameLayout:Landroid/widget/FrameLayout;

.field private mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

.field mCanChord:Z

.field private mConfigChanged:Z

.field private mContentView:Landroid/widget/FrameLayout;

.field private mCurrentMenuState:I

.field private mCurrentTabIndex:I

.field private mCursorUrl:Ljava/lang/String;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mDidStopLoad:Z

.field private mErrorConsoleContainer:Landroid/widget/LinearLayout;

.field private mFakeTitleBar:Lcom/android/browser/TitleBar;

.field private mFindDialog:Lcom/android/browser/FindDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mHttpAuthenticationDialog:Landroid/app/AlertDialog;

.field private mIMEReceiver:Landroid/content/BroadcastReceiver;

.field private mIconView:Z

.field private mInLoad:Z

.field private mIsNetworkUp:Z

.field private mJSAlertPopup:Landroid/app/AlertDialog;

.field private mLastEnteredUrl:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mMixLockIcon:Landroid/graphics/drawable/Drawable;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOldMenuState:I

.field private mOptionsMenuOpen:Z

.field private mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

.field private mPageInfoDialog:Landroid/app/AlertDialog;

.field private mPageInfoFromShowSSLCertificateOnError:Z

.field private mPageInfoView:Lcom/android/browser/Tab;

.field mPendingZoomViewResume:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorView:Landroid/webkit/WebView;

.field private mSSLCertificateView:Lcom/android/browser/Tab;

.field private mSecLockIcon:Landroid/graphics/drawable/Drawable;

.field private mSelectDialog:Lcom/android/browser/SelectDialog;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mStartRect:Landroid/graphics/RectF;

.field private mStartSearch:Z

.field private mStopToast:Landroid/widget/Toast;

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mTitle:Ljava/lang/String;

.field private mTitleBar:Lcom/android/browser/TitleBar;

.field private mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private mVideoProgressView:Landroid/view/View;

.field private mWVHeight:I

.field private mWVWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mbrightProgressBar:Landroid/widget/SeekBar;

.field private mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 243
    const-string v0, "1"

    const-string v1, "debug.browser.bitmapwebview"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/browser/BrowserActivity;->ENABLE_BITMAPWEBVIEW:Z

    .line 3994
    sput v3, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    .line 3995
    sput v3, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    .line 5557
    const-string v0, "(?i)((?:http|https|file|rtsp):\\/\\/|(?:inline|data|about|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    .line 5847
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/BrowserActivity;->SYSTEM_CPU_FORMAT:[I

    .line 5911
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 5915
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    .line 5966
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    .line 5997
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    .line 5998
    sget-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6083
    new-instance v0, Lcom/android/browser/BrowserActivity$UrlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

    return-void

    .line 243
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5847
    :array_0
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 5966
    :array_1
    .array-data 0x4
        0xb7t 0x0t 0xdt 0x7ft
        0xb8t 0x0t 0xdt 0x7ft
        0xb9t 0x0t 0xdt 0x7ft
        0xbat 0x0t 0xdt 0x7ft
        0xbbt 0x0t 0xdt 0x7ft
        0xbct 0x0t 0xdt 0x7ft
        0xbdt 0x0t 0xdt 0x7ft
        0xbet 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 245
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    .line 246
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    .line 248
    iput v3, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    .line 251
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mJSAlertPopup:Landroid/app/AlertDialog;

    .line 257
    new-instance v0, Lcom/android/browser/BrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$1;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v0, Lcom/android/browser/BrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$2;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 309
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStartRect:Landroid/graphics/RectF;

    .line 1072
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mStartSearch:Z

    .line 1304
    new-instance v0, Lcom/android/browser/BrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$11;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3764
    new-instance v0, Lcom/android/browser/BrowserActivity$13;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$13;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    .line 5824
    iput v2, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 5825
    const v0, 0x7f0d00a2

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 5826
    iput v3, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 5840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 5961
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 5962
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    .line 6002
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 6003
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    .line 208
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/BrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->updateScreenshot(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/browser/BrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/browser/BrowserActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mJSAlertPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/browser/BrowserActivity;)Landroid/webkit/SslErrorHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/browser/BrowserActivity;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mJSAlertPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/browser/BrowserActivity;)Landroid/net/http/SslError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/browser/BrowserActivity;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/browser/BrowserActivity;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->addPackageNames(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->dialogIsUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Set;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->packageChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/browser/BrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->setWindowBrightness(I)V

    return-void
.end method

.method private addPackageNames(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5705
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5706
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 5711
    :goto_0
    return-void

    .line 5710
    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addPackageNames(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 8
    .parameter "t"

    .prologue
    .line 3134
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->attachTabToContentView(Landroid/view/ViewGroup;)V

    .line 3136
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    if-eqz v2, :cond_0

    .line 3137
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 3138
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v2

    if-nez v2, :cond_4

    .line 3139
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 3144
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3149
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3150
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 3153
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 3154
    .local v1, view:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 3157
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v2, :cond_2

    .line 3158
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/BrowserRotateControl;->setWebView(Landroid/webkit/WebView;)V

    .line 3161
    :cond_2
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3162
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->showVoiceTitleBar(Ljava/lang/String;)V

    .line 3166
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3168
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 3172
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v2, :cond_3

    .line 3174
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/browser/BitmapWebView;->setWebView(Landroid/webkit/WebView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 3180
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 3181
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 3182
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3186
    :cond_3
    return-void

    .line 3141
    .end local v1           #view:Landroid/webkit/WebView;
    .restart local v0       #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto/16 :goto_0

    .line 3164
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    .restart local v1       #view:Landroid/webkit/WebView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->revertVoiceTitleBar()V

    goto :goto_1
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 3730
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3731
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 3734
    :cond_0
    return-void
.end method

.method private closeDialog(Lcom/android/browser/WebDialog;)Z
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 2781
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/WebDialog;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 2796
    :goto_0
    return v2

    .line 2782
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2783
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 2784
    invoke-virtual {v0, p1}, Lcom/android/browser/Tab;->closeDialog(Lcom/android/browser/WebDialog;)V

    .line 2786
    :cond_2
    invoke-virtual {p1}, Lcom/android/browser/WebDialog;->dismiss()V

    .line 2788
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 2789
    .local v1, webview:Landroid/webkit/WebView;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v2, :cond_3

    .line 2791
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2792
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2, v3}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 2793
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->resume()V

    .line 2796
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 3396
    :try_start_0
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 3397
    if-eqz v0, :cond_0

    .line 3398
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3403
    :cond_0
    :goto_0
    return-void

    .line 3400
    :catch_0
    move-exception v0

    .line 3401
    const-string v1, "browser"

    const-string v2, "Copy failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createAndShowNetworkDialog()V
    .locals 3

    .prologue
    .line 5328
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5329
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 5333
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeContextMenu()V

    .line 5335
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-nez v0, :cond_1

    .line 5336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090064

    new-instance v2, Lcom/android/browser/BrowserActivity$28;

    invoke-direct {v2, p0}, Lcom/android/browser/BrowserActivity$28;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 5358
    :cond_1
    return-void
.end method

.method private createBrightPopup()V
    .locals 4

    .prologue
    .line 1245
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1246
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1248
    const v0, 0x7f0d0016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    .line 1250
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1253
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1254
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1255
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v0

    .line 1260
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1262
    const v2, 0x7f09002c

    new-instance v3, Lcom/android/browser/BrowserActivity$8;

    invoke-direct {v3, p0}, Lcom/android/browser/BrowserActivity$8;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1269
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/browser/BrowserActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/android/browser/BrowserActivity$9;-><init>(Lcom/android/browser/BrowserActivity;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1278
    new-instance v2, Lcom/android/browser/BrowserActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/BrowserActivity$10;-><init>(Lcom/android/browser/BrowserActivity;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1287
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1288
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    .line 1289
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1292
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1294
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1295
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1296
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1297
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1302
    return-void
.end method

.method private createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "source"

    .prologue
    .line 2141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2142
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    return-object v0
.end method

.method private createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 4025
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 4026
    if-nez v0, :cond_0

    move-object v0, v5

    .line 4067
    :goto_0
    return-object v0

    .line 4031
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4038
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4041
    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    .line 4042
    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v4

    .line 4045
    if-lez v3, :cond_1

    .line 4046
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 4052
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    if-lez v4, :cond_2

    .line 4057
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v4, v4

    div-float v4, v5, v4

    .line 4064
    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4066
    invoke-virtual {v0, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    .line 4067
    goto :goto_0

    .line 4033
    :catch_0
    move-exception v0

    .line 4034
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createScreenshot : Bitmap.createBitmap failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 4035
    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 4049
    goto :goto_0

    :cond_2
    move v4, v3

    .line 4061
    goto :goto_1
.end method

.method private createShortcutIntent()Landroid/content/Intent;
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/high16 v11, 0x4000

    .line 2560
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2561
    if-nez v0, :cond_0

    .line 2563
    const-string v0, "browser"

    const-string v1, "createShortcutIntent : Top window is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 2657
    :goto_0
    return-object v0

    .line 2566
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2567
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 2569
    if-eqz v2, :cond_1

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v9, v3, :cond_2

    .line 2570
    :cond_1
    const-string v0, "browser"

    const-string v1, "createShortcutIntent : strURL is null or a blank page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 2571
    goto :goto_0

    .line 2574
    :cond_2
    invoke-static {p0, v2}, Lcom/android/browser/BrowserBookmarksAdapter;->getTouchIcon(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2577
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2578
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v5, v2

    .line 2579
    const/16 v2, 0x20

    shl-long/2addr v5, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v5, v7

    .line 2580
    const-string v2, "com.android.browser.application_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2583
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2584
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2585
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2589
    if-eqz v3, :cond_3

    .line 2591
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2592
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2596
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 2597
    sget-object v5, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2598
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v5, v10, v10, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2599
    const/high16 v3, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v3, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 2600
    const/high16 v3, 0x4100

    const/high16 v6, 0x4100

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2604
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 2605
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2606
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2608
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2656
    :goto_1
    const-string v0, "duplicate"

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v2

    .line 2657
    goto/16 :goto_0

    .line 2611
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2613
    if-nez v0, :cond_4

    .line 2614
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v1, 0x7f02002f

    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 2617
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020030

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2621
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2622
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2625
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 2626
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2627
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2629
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 2631
    const/high16 v7, 0x4180

    mul-float/2addr v7, v6

    .line 2632
    mul-float/2addr v6, v11

    .line 2633
    mul-float v8, v11, v6

    add-float/2addr v7, v8

    .line 2635
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v8, v12, v12, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2636
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    div-float v9, v7, v11

    sub-float/2addr v1, v9

    .line 2640
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    div-float v9, v7, v11

    sub-float/2addr v8, v9

    sub-float/2addr v8, v6

    .line 2641
    new-instance v9, Landroid/graphics/RectF;

    add-float v10, v1, v7

    add-float/2addr v7, v8

    invoke-direct {v9, v1, v8, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2644
    invoke-virtual {v4, v9, v11, v11, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2649
    invoke-virtual {v9, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 2650
    invoke-virtual {v4, v0, v13, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2651
    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private dialogIsUp()Z
    .locals 1

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0}, Lcom/android/browser/FindDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    invoke-virtual {v0}, Lcom/android/browser/SelectDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x7b

    const/16 v8, 0x5d

    const/16 v7, 0x5c

    const/16 v6, 0x5b

    const/4 v5, 0x0

    .line 4679
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4682
    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_6

    aget-char v3, v0, v2

    .line 4684
    if-eq v3, v6, :cond_0

    if-eq v3, v8, :cond_0

    if-eq v3, v7, :cond_0

    if-eq v3, v9, :cond_0

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_1

    .line 4685
    :cond_0
    const/4 v1, 0x1

    .line 4689
    :goto_1
    if-nez v1, :cond_2

    move-object v0, p0

    .line 4704
    :goto_2
    return-object v0

    .line 4682
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4693
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4694
    array-length v2, v0

    move v3, v5

    :goto_3
    if-ge v3, v2, :cond_5

    aget-char v4, v0, v3

    .line 4696
    if-eq v4, v6, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-eq v4, v9, :cond_3

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_4

    .line 4697
    :cond_3
    const/16 v5, 0x25

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4698
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4694
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4700
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4704
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_1
.end method

.method static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1219
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v1, v6

    move v2, v7

    move-object v3, p0

    .line 1221
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1222
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1223
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1232
    :cond_0
    const-string v0, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move-object v0, v3

    .line 1240
    :goto_1
    return-object v0

    .line 1226
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v2, v4

    .line 1227
    sub-int v4, v0, v7

    if-ne v1, v4, :cond_3

    if-nez v2, :cond_3

    .line 1228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1221
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1234
    :cond_4
    const-string v0, "http:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1236
    :cond_5
    const-string v0, "http:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1237
    :cond_6
    const-string v0, "/"

    const-string v1, "//"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1238
    :cond_7
    const-string v0, ":"

    const-string v1, "://"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method private forceRGB565()V
    .locals 4

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 697
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRGB565 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 698
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 700
    const/4 v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 701
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 703
    :cond_0
    return-void
.end method

.method private formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const-string v1, ""

    .line 5187
    if-nez p1, :cond_1

    .line 5188
    const-string v0, ""

    move-object v0, v1

    .line 5194
    :cond_0
    :goto_0
    return-object v0

    .line 5190
    :cond_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 5191
    if-nez v0, :cond_0

    .line 5192
    const-string v0, ""

    move-object v0, v1

    goto :goto_0
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 4020
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    .line 4021
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 4004
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    if-nez v0, :cond_0

    .line 4005
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4006
    const/high16 v1, 0x42b4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    .line 4007
    const/high16 v1, 0x42a0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    .line 4009
    :cond_0
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    return v0
.end method

.method private getInstalledPackages()V
    .locals 2

    .prologue
    .line 5714
    new-instance v0, Lcom/android/browser/BrowserActivity$29;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$29;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 5736
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5737
    return-void
.end method

.method private getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1145
    const-string v0, ""

    .line 1147
    if-eqz p1, :cond_5

    .line 1148
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1149
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1150
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1152
    if-eqz v0, :cond_5

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1153
    const-string v1, "com.android.browser.headers"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1155
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1156
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1157
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1158
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1160
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_1
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1197
    :goto_2
    new-instance v2, Lcom/android/browser/BrowserActivity$UrlData;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V

    return-object v2

    .line 1164
    :cond_1
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1167
    :cond_2
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_5

    .line 1169
    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 1172
    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 1176
    new-instance v2, Lcom/android/browser/BrowserActivity$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/browser/BrowserActivity$7;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/browser/BrowserActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1182
    const-string v1, "&source=android-browser-suggest&"

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1185
    const-string v2, "app_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1186
    if-eqz v2, :cond_4

    .line 1187
    const-string v3, "source"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1189
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1190
    const-string v2, "unknown"

    .line 1192
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&source=android-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_4
    move-object v2, v5

    goto :goto_3

    :cond_5
    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_6
    move-object v1, v5

    goto/16 :goto_1
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1080
    if-nez p1, :cond_0

    move v0, v3

    .line 1096
    :goto_0
    return v0

    .line 1082
    :cond_0
    const/4 v0, 0x0

    .line 1083
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1084
    const-string v2, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 1086
    goto :goto_0

    .line 1088
    :cond_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1089
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1090
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    :cond_2
    :goto_1
    const-string v1, "app_data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/BrowserActivity;->handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1091
    :cond_3
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1094
    :cond_4
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 8
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1106
    if-nez p1, :cond_0

    move v4, v6

    .line 1141
    :goto_0
    return v4

    .line 1110
    :cond_0
    invoke-static {p1}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1114
    .local v3, url:Ljava/lang/String;
    sget-object v4, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/android/browser/BrowserActivity;->parseUrlShortcut(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v6

    .line 1117
    goto :goto_0

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 1121
    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, v3

    .line 1122
    .local v1, newUrl:Ljava/lang/String;
    new-instance v4, Lcom/android/browser/BrowserActivity$6;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/browser/BrowserActivity$6;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1130
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    .line 1131
    .local v2, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-nez v2, :cond_3

    move v4, v6

    goto :goto_0

    .line 1132
    :cond_3
    invoke-interface {v2, p0, v3, p2, p3}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1136
    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1137
    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mStartSearch:Z

    move v4, v6

    .line 1138
    goto :goto_0

    :cond_4
    move v4, v7

    .line 1141
    goto :goto_0
.end method

.method private hideFakeTitleBar()V
    .locals 3

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->setTitleBarVisibility(Z)V

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1680
    :goto_0
    return-void

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1669
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1674
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1676
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1678
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1679
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1674
    :cond_2
    const v1, 0x7f0b0003

    goto :goto_1
.end method

.method private inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5135
    if-nez p1, :cond_0

    move-object v0, v2

    .line 5178
    :goto_0
    return-object v0

    .line 5139
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5141
    const v1, 0x7f030020

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5145
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    .line 5146
    if-eqz v2, :cond_1

    .line 5147
    const v0, 0x7f0d0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5149
    const v0, 0x7f0d0072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5151
    const v0, 0x7f0d0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5156
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    .line 5157
    if-eqz v2, :cond_2

    .line 5158
    const v0, 0x7f0d0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5160
    const v0, 0x7f0d0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5162
    const v0, 0x7f0d007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5167
    :cond_2
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 5169
    const v0, 0x7f0d007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5173
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 5175
    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 5178
    goto/16 :goto_0
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 1494
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1495
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1496
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1497
    return-void
.end method

.method private loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 5518
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5519
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 5520
    return-void
.end method

.method private loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V
    .locals 2
    .parameter "t"
    .parameter "data"

    .prologue
    .line 5529
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p2, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5530
    invoke-virtual {p2, p1}, Lcom/android/browser/BrowserActivity$UrlData;->loadIn(Lcom/android/browser/Tab;)V

    .line 5531
    return-void
.end method

.method private loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 5502
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5503
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5504
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5505
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5508
    :cond_0
    return-void
.end method

.method private openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "url"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    .line 3239
    new-instance v0, Lcom/android/browser/BrowserActivity$UrlData;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private packageChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "wasAdded"

    .prologue
    .line 5692
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5693
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 5702
    :goto_0
    return-void

    .line 5697
    :cond_0
    if-eqz p2, :cond_1

    .line 5698
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 5700
    :cond_1
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseUrlShortcut(Ljava/lang/String;)I
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1049
    if-nez p1, :cond_0

    move v0, v2

    .line 1068
    :goto_0
    return v0

    .line 1052
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1053
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v2

    .line 1068
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 1056
    goto :goto_0

    :sswitch_1
    move v0, v4

    .line 1057
    goto :goto_0

    .line 1058
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1053
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x64 -> :sswitch_1
        0x77 -> :sswitch_2
    .end sparse-switch
.end method

.method private pauseWebViewTimers()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1993
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1994
    .local v1, tab:Lcom/android/browser/Tab;
    if-nez v1, :cond_0

    move v3, v4

    .line 2004
    :goto_0
    return v3

    .line 1995
    :cond_0
    invoke-virtual {v1}, Lcom/android/browser/Tab;->inLoad()Z

    move-result v0

    .line 1996
    .local v0, inLoad:Z
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 1997
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1998
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1999
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_1

    .line 2000
    invoke-virtual {v2}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_1
    move v3, v4

    .line 2002
    goto :goto_0

    .line 2004
    .end local v2           #w:Landroid/webkit/WebView;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeTabFromContentView(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 3198
    if-nez p1, :cond_1

    .line 3221
    :cond_0
    :goto_0
    return-void

    .line 3202
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->removeTabFromContentView(Landroid/view/ViewGroup;)V

    .line 3204
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 3205
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz v0, :cond_2

    .line 3206
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3209
    :cond_2
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 3210
    .local v1, view:Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 3211
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 3213
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v2, :cond_3

    .line 3214
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserRotateControl;->setWebView(Landroid/webkit/WebView;)V

    .line 3217
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v2, :cond_0

    .line 3219
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    goto :goto_0
.end method

.method private resetLockIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 4828
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 4829
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 4830
    invoke-virtual {v0, p1}, Lcom/android/browser/Tab;->resetLockIcon(Ljava/lang/String;)V

    .line 4832
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 4833
    return-void
.end method

.method private resetTitleAndIcon(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 3442
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3443
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 3444
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3450
    :goto_0
    return-void

    .line 3447
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resetTitleIconAndProgress()V
    .locals 3

    .prologue
    .line 3431
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3432
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 3438
    :goto_0
    return-void

    .line 3435
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 3436
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 3437
    .local v1, progress:I
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method private resumeWebViewTimers()V
    .locals 4

    .prologue
    .line 1980
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1981
    .local v1, tab:Lcom/android/browser/Tab;
    if-nez v1, :cond_1

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1982
    :cond_1
    invoke-virtual {v1}, Lcom/android/browser/Tab;->inLoad()Z

    move-result v0

    .line 1983
    .local v0, inLoad:Z
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1984
    :cond_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1985
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1986
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 1987
    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_0
.end method

.method private retainIconsOnStartup()V
    .locals 7

    .prologue
    .line 2010
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    .line 2011
    .local v1, db:Landroid/webkit/WebIconDatabase;
    const-string v5, "icons"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/browser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 2012
    const/4 v0, 0x0

    .line 2014
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Landroid/provider/Browser;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 2015
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2016
    const-string v5, "url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2018
    .local v4, urlIndex:I
    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2019
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 2020
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 2025
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urlIndex:I
    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2027
    :cond_2
    return-void

    .line 2022
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 2023
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v5, "browser"

    const-string v6, "retainIconsOnStartup"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2025
    if-eqz v0, :cond_2

    goto :goto_0

    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method private sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 5685
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5686
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 5687
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 5689
    :cond_0
    return-void
.end method

.method public static setBatteryADC(Z)V
    .locals 5
    .parameter

    .prologue
    .line 6050
    const-string v0, "/sys/class/power_supply/battery/browser"

    .line 6053
    const/4 v1, 0x0

    .line 6056
    const/16 v2, 0x64

    :try_start_0
    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6059
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6065
    if-eqz p0, :cond_0

    .line 6066
    const/4 v0, 0x0

    const/16 v1, 0x31

    :try_start_2
    aput-byte v1, v2, v0

    .line 6070
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 6071
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 6081
    :goto_1
    return-void

    .line 6060
    :catch_0
    move-exception v0

    .line 6061
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 6072
    :catch_1
    move-exception v0

    .line 6073
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6075
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 6076
    :catch_2
    move-exception v0

    .line 6077
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 6068
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x30

    :try_start_5
    aput-byte v1, v2, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 6072
    :catch_3
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method

.method private setStatusBarVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v2, 0x400

    .line 5679
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 5680
    .local v0, flag:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    .line 5681
    return-void

    .end local v0           #flag:I
    :cond_0
    move v0, v2

    .line 5679
    goto :goto_0
.end method

.method private setWindowBrightness(I)V
    .locals 3
    .parameter

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1325
    if-gtz p1, :cond_0

    .line 1326
    const v1, 0x3df5c28f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1334
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1, p1}, Lcom/android/browser/BrowserSettings;->setBrightness(I)V

    .line 1335
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1337
    return-void

    .line 1327
    :cond_0
    const/16 v1, 0x28

    if-ne p1, v1, :cond_1

    .line 1328
    const v1, 0x3ee66666

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 1329
    :cond_1
    const/16 v1, 0x32

    if-ne p1, v1, :cond_2

    .line 1330
    const v1, 0x3f11eb85

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 1332
    :cond_2
    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method

.method public static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3927
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3928
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3929
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3930
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3931
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3932
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3934
    const v1, 0x7f090060

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3939
    :goto_0
    return-void

    .line 3936
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2278
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2279
    .local v1, tab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_1

    move v2, v5

    :goto_0
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2282
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2283
    .local v0, mainView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 2284
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 2287
    .end local v0           #mainView:Landroid/webkit/WebView;
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 2288
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 2289
    invoke-virtual {v1, p1}, Lcom/android/browser/Tab;->showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;

    move-result-object v2

    return-object v2

    :cond_1
    move v2, v4

    .line 2279
    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private showFakeTitleBar()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1608
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_0

    .line 1609
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1, v9}, Lcom/android/browser/BitmapWebView;->setTitleBarVisibility(Z)V

    .line 1611
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v1, :cond_1

    .line 1613
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v8

    .line 1615
    if-nez v8, :cond_2

    .line 1643
    :cond_1
    :goto_0
    return-void

    .line 1620
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->dialogIsUp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1626
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager;

    move-object v7, v0

    .line 1631
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1638
    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1639
    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 1640
    :goto_1
    if-eqz v2, :cond_4

    move v2, v9

    :goto_2
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1641
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v7, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move v2, v9

    .line 1639
    goto :goto_1

    .line 1640
    :cond_4
    const v2, 0x7f0b0003

    goto :goto_2
.end method

.method private showPageInfo(Lcom/android/browser/Tab;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v4, ""

    .line 4869
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4872
    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4874
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 4879
    if-nez v2, :cond_3

    .line 4880
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4881
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    .line 4891
    :goto_0
    if-nez v3, :cond_0

    .line 4892
    const-string v3, ""

    move-object v3, v4

    .line 4894
    :cond_0
    if-nez v0, :cond_5

    .line 4895
    const-string v0, ""

    .line 4898
    :goto_1
    const v0, 0x7f0d001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4899
    const v0, 0x7f0d0007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4901
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    .line 4902
    iput-boolean p2, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    .line 4904
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090012

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v3, Lcom/android/browser/BrowserActivity$18;

    invoke-direct {v3, p0, p2}, Lcom/android/browser/BrowserActivity$18;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$17;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/BrowserActivity$17;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4945
    if-nez p2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4948
    :cond_1
    const v1, 0x7f090018

    new-instance v3, Lcom/android/browser/BrowserActivity$19;

    invoke-direct {v3, p0, p2, v2, p1}, Lcom/android/browser/BrowserActivity$19;-><init>(Lcom/android/browser/BrowserActivity;ZLandroid/webkit/WebView;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4974
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    .line 4975
    return-void

    .line 4882
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v2, v0, :cond_4

    .line 4884
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 4885
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_0

    .line 4887
    :cond_4
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4888
    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_5
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private showSSLCertificate(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter

    .prologue
    .line 4983
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v1

    .line 4985
    if-nez v1, :cond_0

    .line 5025
    :goto_0
    return-void

    .line 4989
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4991
    const v0, 0x7f0d006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4994
    const v3, 0x7f030021

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4996
    const v2, 0x7f0d0080

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f09001e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 4999
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    .line 5000
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09001d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f02002a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserActivity$21;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserActivity$21;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/BrowserActivity$20;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "inUri"

    .prologue
    .line 5551
    if-eqz p1, :cond_0

    .line 5552
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5554
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInLoadMenuItems()V
    .locals 3

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 2072
    :goto_0
    return-void

    .line 2066
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0d00c2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2069
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0d00a6

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2070
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2071
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 2066
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0d00c3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1
.end method

.method private updateLockIconImage(I)V
    .locals 2
    .parameter "lockIconType"

    .prologue
    .line 4849
    const/4 v0, 0x0

    .line 4850
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4851
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 4855
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 4856
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 4857
    return-void

    .line 4852
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4853
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateLockIconToLatest()V
    .locals 2

    .prologue
    .line 4839
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 4840
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 4841
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getLockIconType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 4843
    :cond_0
    return-void
.end method

.method private updateScreenshot(Landroid/webkit/WebView;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 3948
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3949
    .local v5, bm:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 3987
    :goto_0
    return-void

    .line 3953
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3954
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 3955
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 3957
    .local v3, originalUrl:Ljava/lang/String;
    new-instance v0, Lcom/android/browser/BrowserActivity$14;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity$14;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$14;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 5543
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5544
    invoke-virtual {p0, p2, v1}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 5545
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 5546
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 5548
    :cond_0
    return-void
.end method


# virtual methods
.method ActiveTabsPageIsNull()Z
    .locals 1

    .prologue
    .line 5741
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-nez v0, :cond_0

    .line 5742
    const/4 v0, 0x1

    .line 5744
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method AddFeedToGoogleReader(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 4556
    const-string v0, "http://www.google.com/reader/i/#stream/feed/"

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    .line 4557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    .line 4559
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4563
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/browser/Tab;->mbIsDownloadRss:Z

    .line 4593
    return-void
.end method

.method attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->attachSubWindow(Landroid/view/ViewGroup;)V

    .line 3191
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3192
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 3194
    :cond_0
    return-void
.end method

.method bookmarksOrHistoryPicker(Z)V
    .locals 8
    .parameter "startWithHistory"

    .prologue
    const/4 v7, 0x1

    .line 5463
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5464
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 5497
    :goto_0
    return-void

    .line 5467
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5469
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 5470
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 5471
    .local v4, url:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5475
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 5476
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 5478
    if-nez v4, :cond_1

    .line 5479
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v4

    .line 5483
    :cond_1
    if-nez v3, :cond_2

    .line 5484
    move-object v3, v4

    .line 5486
    :cond_2
    const-string v5, "title"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5487
    const-string v5, "url"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5488
    const-string v5, "thumbnail"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5490
    const-string v5, "disable_new_window"

    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5491
    const-string v5, "touch_icon_url"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5492
    if-eqz p1, :cond_3

    .line 5493
    sget-object v5, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    sget-object v6, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5496
    :cond_3
    invoke-virtual {p0, v1, v7}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5490
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method clearZoomOutAnimation()V
    .locals 3

    .prologue
    .line 5790
    const/4 v0, 0x0

    .line 5791
    .local v0, needToAttach:Z
    iget v1, p0, Lcom/android/browser/BrowserActivity;->mCurrentTabIndex:I

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5792
    iget v1, p0, Lcom/android/browser/BrowserActivity;->mCurrentTabIndex:I

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 5797
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 5798
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v1, :cond_0

    .line 5799
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v1}, Lcom/android/browser/BrowserRotateControl;->rotateToDestination()V

    .line 5802
    :cond_0
    return-void

    .line 5792
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 5795
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_0
.end method

.method closeCurrentWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2227
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2228
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 2231
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 2232
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 2252
    :cond_0
    :goto_0
    return-void

    .line 2235
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v4

    move-object v3, v4

    .line 2236
    .local v3, parent:Lcom/android/browser/Tab;
    :goto_1
    const/4 v2, -0x1

    .line 2237
    .local v2, indexToShow:I
    if-eqz v3, :cond_4

    .line 2238
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v2

    .line 2248
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2250
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2235
    .end local v2           #indexToShow:I
    .end local v3           #parent:Lcom/android/browser/Tab;
    :cond_3
    const/4 v4, 0x0

    move-object v3, v4

    goto :goto_1

    .line 2240
    .restart local v2       #indexToShow:I
    .restart local v3       #parent:Lcom/android/browser/Tab;
    :cond_4
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 2242
    .local v1, currentIndex:I
    add-int/lit8 v2, v1, 0x1

    .line 2243
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_2

    .line 2245
    sub-int v2, v1, v5

    goto :goto_2
.end method

.method public closeDialogs()V
    .locals 3

    .prologue
    .line 2803
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->closeDialog(Lcom/android/browser/WebDialog;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->closeDialog(Lcom/android/browser/WebDialog;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2820
    :cond_0
    :goto_0
    return-void

    .line 2806
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2807
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2808
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2809
    .local v1, mainView:Landroid/webkit/WebView;
    if-eqz v1, :cond_2

    .line 2810
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 2813
    .end local v1           #mainView:Landroid/webkit/WebView;
    :cond_2
    const v2, 0x7f0d00a2

    iput v2, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 2814
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v2, :cond_0

    .line 2818
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method closeTab(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 3516
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    .line 3517
    .local v0, currentIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    .line 3518
    .local v1, removeIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 3519
    if-lt v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 3520
    add-int/lit8 v0, v0, -0x1

    .line 3522
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 3523
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 3524
    return-void
.end method

.method customViewActive()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 3726
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    return v0
.end method

.method dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 3226
    if-eqz p1, :cond_0

    .line 3227
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->removeSubWindow(Landroid/view/ViewGroup;)V

    .line 3229
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 3231
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3232
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 3234
    :cond_1
    return-void
.end method

.method displayRssLinks()V
    .locals 5

    .prologue
    .line 2318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2321
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 2322
    if-nez v1, :cond_0

    .line 2337
    :goto_0
    return-void

    .line 2325
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v1

    .line 2327
    array-length v2, v1

    .line 2328
    const-string v3, "Feed_number"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2330
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 2332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/webkit/WebFeedLink;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/webkit/WebFeedLink;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2336
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method editUrl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2147
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 2149
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v4

    .line 2150
    .local v0, url:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v4

    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2152
    return-void

    .line 2149
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .restart local v0       #url:Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 2150
    goto :goto_1
.end method

.method geoPromptActive()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-nez v3, :cond_0

    move v3, v4

    .line 333
    :goto_0
    return v3

    .line 322
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 323
    .local v2, tab:Lcom/android/browser/Tab;
    if-nez v2, :cond_1

    move v3, v4

    .line 324
    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, v2, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    .line 328
    .local v1, prompt:Lcom/android/browser/GeolocationPermissionsPrompt;
    if-nez v1, :cond_2

    move v3, v4

    .line 329
    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, v1, Lcom/android/browser/GeolocationPermissionsPrompt;->mInner:Landroid/widget/LinearLayout;

    .line 333
    .local v0, inner:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 4511
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 4512
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020019

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 4515
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 5270
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5271
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 5272
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 5274
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x64

    goto :goto_0
.end method

.method getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method getTitleBar()Lcom/android/browser/TitleBar;
    .locals 1

    .prologue
    .line 5784
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2038
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 4519
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4520
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4521
    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    .line 4524
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    const-string v3, "browser"

    .line 3528
    const-string v0, "browser"

    const-string v0, "BrowserActivity.goBackOnePageOrQuit : called"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 3532
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 3533
    if-nez v0, :cond_0

    .line 3542
    const-string v0, "browser"

    const-string v0, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    .line 3605
    :goto_0
    return-void

    .line 3546
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 3547
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3548
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 3549
    const-string v0, "browser"

    const-string v0, "goBackOnePageOrQuit: canGoBack()"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3553
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 3554
    if-eqz v1, :cond_2

    .line 3555
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 3557
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 3558
    const-string v0, "browser"

    const-string v0, "goBackOnePageOrQuit: closeTab()"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3560
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnExit()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3564
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->clearInLoad()V

    .line 3565
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 3566
    const-string v0, "browser"

    const-string v0, "finishing the activity and tab count is 1"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_0

    .line 3575
    :cond_3
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 3576
    if-eqz v1, :cond_4

    .line 3577
    const-string v2, "browser"

    const-string v2, "BrowserActivity is already paused while handing goBackOnePageOrQuit."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    :cond_4
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 3581
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    .line 3582
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 3583
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 3584
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 3601
    :cond_5
    const-string v0, "browser"

    const-string v0, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 3587
    :cond_6
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 3588
    const-string v0, "browser"

    const-string v0, "goBackOnePageOrQuit: finish Browser."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto/16 :goto_0
.end method

.method hideFakeTitleBarWithoutAnimation()V
    .locals 4

    .prologue
    .line 5752
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v3}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5765
    :goto_0
    return-void

    .line 5753
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v3}, Lcom/android/browser/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 5755
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5760
    .local v0, mainView:Landroid/webkit/WebView;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 5761
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 5763
    .local v1, manager:Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v3, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5764
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method initZoomView()V
    .locals 6

    .prologue
    .line 4086
    sget-boolean v0, Lcom/android/browser/BrowserActivity;->ENABLE_BITMAPWEBVIEW:Z

    if-nez v0, :cond_1

    .line 4088
    const-string v0, "browser"

    const-string v1, "initZoomView : disabled ENABLE_BITMAPWEBVIEW is false "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    :cond_0
    :goto_0
    return-void

    .line 4092
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-nez v0, :cond_0

    .line 4095
    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BitmapWebView;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 4096
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Browser;

    .line 4097
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iput-object v1, v0, Lcom/android/browser/Browser;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 4102
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 4103
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BitmapWebViewLayout;

    .line 4104
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iput-object v1, v0, Lcom/android/browser/BitmapWebViewLayout;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 4105
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->update3DSurfaceLayout()V

    .line 4107
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 4109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4111
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 4112
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/BitmapWebView;->setTitleBar(Landroid/view/View;)V

    .line 4113
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/android/browser/BitmapWebView;->setWebView(Landroid/webkit/WebView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method isMenuDown()Z
    .locals 1

    .prologue
    .line 3608
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    return v0
.end method

.method isNetworkUp()Z
    .locals 1

    .prologue
    .line 5322
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    return v0
.end method

.method public isRssLinkedPage()Z
    .locals 1

    .prologue
    .line 2297
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v5, "new_window"

    .line 5363
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5434
    :goto_0
    return-void

    .line 5365
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5425
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 5426
    if-eqz v0, :cond_7

    .line 5427
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 5367
    :pswitch_1
    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 5368
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5369
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 5370
    if-eqz v1, :cond_3

    const-string v2, "new_window"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5371
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    .line 5384
    :cond_2
    :goto_2
    :pswitch_2
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 5385
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5386
    const-string v1, "privacy_clear_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5387
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 5373
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 5375
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 5376
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 5377
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 5393
    :pswitch_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    .line 5394
    if-eqz p3, :cond_4

    if-eq p2, v3, :cond_5

    :cond_4
    move-object v0, v2

    .line 5396
    :goto_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 5397
    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_1

    .line 5394
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 5401
    :pswitch_4
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 5402
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5403
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 5404
    if-eqz v1, :cond_6

    const-string v2, "new_window"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5405
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_1

    .line 5407
    :cond_6
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 5409
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 5410
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5412
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->AddFeedToGoogleReader(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5431
    :cond_7
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult getTopWindow() is null, requestCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1895
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->abortAnimation()V

    .line 1899
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_1

    .line 1900
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/browser/BitmapWebView;->mRotationStartTime:J

    .line 1903
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1904
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1909
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1910
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1911
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    .line 1915
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1916
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1917
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V

    .line 1920
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1921
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1922
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1927
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1928
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x102018f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1931
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d0059

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1933
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1935
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 1937
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1938
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1948
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 1949
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onResumed()V

    .line 1950
    :cond_6
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    .line 2079
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 2080
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 2081
    .local v2, id:I
    const/4 v5, 0x1

    .line 2082
    .local v5, result:Z
    sparse-switch v2, :sswitch_data_0

    .line 2134
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    .line 2136
    :goto_0
    iput-boolean v10, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 2137
    return v5

    .line 2085
    :sswitch_0
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2086
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2087
    const/4 v5, 0x0

    .line 2088
    goto :goto_0

    .line 2090
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2091
    .local v3, mainView:Landroid/webkit/WebView;
    if-nez v3, :cond_1

    .line 2092
    const/4 v5, 0x0

    .line 2093
    goto :goto_0

    .line 2095
    :cond_1
    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2104
    .end local v0           #currentTab:Lcom/android/browser/Tab;
    .end local v3           #mainView:Landroid/webkit/WebView;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    .line 2105
    .local v6, webView:Landroid/webkit/WebView;
    if-nez v6, :cond_2

    .line 2106
    const/4 v5, 0x0

    .line 2107
    goto :goto_0

    .line 2109
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2110
    .local v1, hrefMap:Ljava/util/HashMap;
    const-string v7, "webview"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x66

    invoke-virtual {v7, v8, v2, v10, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2114
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v6}, Landroid/webkit/WebView;->cursorIsAnchor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2117
    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0

    .line 2123
    :cond_3
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "url"

    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mCursorUrl:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mCursorUrl:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2082
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0099 -> :sswitch_1
        0x7f0d009d -> :sswitch_1
        0x7f0d00cf -> :sswitch_1
        0x7f0d00d0 -> :sswitch_1
        0x7f0d00d1 -> :sswitch_1
        0x7f0d00d2 -> :sswitch_1
        0x7f0d00e1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1703
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1704
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_0

    .line 1705
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1709
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mCursorUrl:Ljava/lang/String;

    .line 1711
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 343
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onCreate: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 347
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->forceRGB565()V

    .line 351
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 364
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->setDefaultKeyMode(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 369
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 373
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 676
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 380
    const-string v1, "AllowBrowser"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 381
    if-nez v0, :cond_1

    .line 385
    const v0, 0x7f090144

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_0

    .line 391
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 393
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    .line 396
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 398
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    .line 400
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0046

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 402
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0045

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 404
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0044

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 412
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    new-instance v0, Lcom/android/browser/TitleBar;

    invoke-direct {v0, p0}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 415
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 416
    new-instance v0, Lcom/android/browser/TitleBar;

    invoke-direct {v0, p0}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    .line 419
    new-instance v0, Lcom/android/browser/TabControl;

    invoke-direct {v0, p0}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    .line 422
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->retainIconsOnStartup()V

    .line 424
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setTabControl(Lcom/android/browser/TabControl;)V

    .line 426
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 427
    const-string v1, "Browser"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 431
    const v0, 0x7f090107

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    .line 434
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 436
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_2

    .line 438
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 443
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 444
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    new-instance v0, Lcom/android/browser/BrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$3;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    new-instance v0, Lcom/android/browser/BrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$4;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    .line 538
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 539
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 541
    new-instance v1, Lcom/android/browser/BrowserActivity$5;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserActivity$5;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    .line 588
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 593
    new-instance v0, Lcom/android/browser/BrowserActivity$ClearThumbnails;

    invoke-direct {v0, v3}, Lcom/android/browser/BrowserActivity$ClearThumbnails;-><init>(Lcom/android/browser/BrowserActivity$1;)V

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getThumbnailDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$ClearThumbnails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 597
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 598
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 604
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;

    move-result-object v2

    .line 606
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 607
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    const-string v5, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    move v3, v7

    :goto_1
    const-string v5, "com.android.browser.application_id"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v0, v5}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 615
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 616
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 617
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 619
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v4, :cond_5

    .line 620
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserRotateControl;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 623
    :cond_5
    if-eqz v1, :cond_6

    .line 624
    const-string v4, "browser.initialZoomLevel"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 625
    if-lez v1, :cond_6

    const/16 v4, 0x3e8

    if-gt v1, v4, :cond_6

    .line 626
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 632
    :cond_6
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mStartSearch:Z

    if-nez v1, :cond_9

    .line 633
    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 634
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 653
    :goto_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getThumbnailDir()Ljava/io/File;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 655
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_c

    aget-object v4, v1, v3

    .line 656
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 657
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 655
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v6

    .line 607
    goto :goto_1

    .line 636
    :cond_8
    invoke-direct {p0, v0, v2}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto :goto_2

    .line 639
    :cond_9
    iput-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mStartSearch:Z

    goto :goto_2

    .line 645
    :cond_a
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v0, :cond_b

    .line 646
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserRotateControl;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 649
    :cond_b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    goto :goto_2

    .line 662
    :cond_c
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getJsFlags()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    .line 664
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 666
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setJsFlags(Ljava/lang/String;)V

    .line 670
    :cond_d
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->getInstalledPackages()V

    .line 673
    new-instance v0, Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 675
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "android.intent.action.VIEW"

    .line 3007
    instance-of v0, p2, Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_1

    .line 3127
    :cond_0
    :goto_0
    return-void

    .line 3010
    :cond_1
    check-cast p2, Landroid/webkit/WebView;

    .line 3011
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 3012
    if-eqz v0, :cond_0

    .line 3016
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 3017
    if-nez v1, :cond_2

    .line 3018
    const-string v0, "browser"

    const-string v1, "We should not show context menu when nothing is touched"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3022
    :cond_2
    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 3028
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 3033
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 3034
    const v3, 0x7f0c0004

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3037
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 3038
    const v0, 0x7f0d00c4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    move v3, v6

    :goto_1
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 3040
    const v0, 0x7f0d00c8

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    move v3, v6

    :goto_2
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 3042
    const v0, 0x7f0d00cb

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    move v3, v6

    :goto_3
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 3044
    const v0, 0x7f0d00d3

    if-eq v1, v8, :cond_3

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    :cond_3
    move v3, v6

    :goto_4
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 3047
    const v0, 0x7f0d00ce

    if-eq v1, v9, :cond_4

    const/16 v3, 0x8

    if-ne v1, v3, :cond_a

    :cond_4
    move v3, v6

    :goto_5
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 3052
    packed-switch v1, :pswitch_data_0

    .line 3123
    :pswitch_0
    const-string v0, "browser"

    const-string v1, "We should not get here."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_5
    :goto_6
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    goto :goto_0

    :cond_6
    move v3, v5

    .line 3038
    goto :goto_1

    :cond_7
    move v3, v5

    .line 3040
    goto :goto_2

    :cond_8
    move v3, v5

    .line 3042
    goto :goto_3

    :cond_9
    move v3, v5

    .line 3044
    goto :goto_4

    :cond_a
    move v3, v5

    .line 3047
    goto :goto_5

    .line 3054
    :pswitch_1
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3055
    const v0, 0x7f0d00c5

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3058
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3059
    const-string v1, "phone"

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3060
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3061
    const v1, 0x7f0d00c6

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3063
    const v0, 0x7f0d00c7

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_6

    .line 3068
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3069
    const v0, 0x7f0d00c9

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3072
    const v0, 0x7f0d00ca

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 3077
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3078
    const v0, 0x7f0d00cc

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3082
    const v0, 0x7f0d00cd

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 3088
    :pswitch_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x109000e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3091
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3093
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mCursorUrl:Ljava/lang/String;

    .line 3095
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 3097
    const v0, 0x7f0d00cf

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3099
    const v0, 0x7f0d00d0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v2}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3101
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3102
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3103
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3104
    const/high16 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 3105
    const v3, 0x7f0d009d

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_c

    move v0, v6

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3106
    if-eq v1, v9, :cond_5

    .line 3111
    :pswitch_5
    if-ne v1, v8, :cond_b

    .line 3112
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3114
    :cond_b
    const v0, 0x7f0d00d5

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3116
    const v0, 0x7f0d00d4

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Download;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Download;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3118
    const v0, 0x7f0d00d6

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$SetAsWallpaper;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$SetAsWallpaper;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_c
    move v0, v5

    .line 3105
    goto :goto_7

    .line 3052
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 2048
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2050
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2051
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2052
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    .line 2053
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 2054
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1838
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onDestroy: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1848
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 1876
    :try_start_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 1877
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->onDestroy()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 1879
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v0, :cond_1

    .line 1880
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v0}, Lcom/android/browser/BrowserRotateControl;->onDestroy()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1883
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_2

    .line 1884
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onDestroy()V

    .line 1885
    :cond_2
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    .line 1886
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    .line 1887
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    .line 1888
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 1889
    :goto_3
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    .line 1891
    return-void

    .line 1856
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1859
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1860
    if-eqz v0, :cond_4

    .line 1861
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1862
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1865
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->destroy()V

    .line 1866
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->close()V

    .line 1868
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1871
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 1872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1876
    :try_start_5
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 1877
    :goto_4
    :try_start_6
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->onDestroy()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 1879
    :goto_5
    :try_start_7
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v0, :cond_5

    .line 1880
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v0}, Lcom/android/browser/BrowserRotateControl;->onDestroy()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 1883
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_6

    .line 1884
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onDestroy()V

    .line 1885
    :cond_6
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    .line 1886
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    .line 1887
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    .line 1888
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    goto :goto_3

    .line 1876
    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1877
    :goto_7
    :try_start_9
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v1}, Lcom/android/browser/ActiveTabsPage;->onDestroy()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 1879
    :goto_8
    :try_start_a
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v1, :cond_7

    .line 1880
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v1}, Lcom/android/browser/BrowserRotateControl;->onDestroy()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 1883
    :cond_7
    :goto_9
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_8

    .line 1884
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->onDestroy()V

    .line 1885
    :cond_8
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    .line 1886
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    .line 1887
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    .line 1888
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 1889
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    .line 1876
    throw v0

    .line 1882
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1877
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1876
    :catch_2
    move-exception v0

    goto :goto_4

    .line 1882
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 1877
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 1876
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 1882
    :catch_6
    move-exception v1

    goto :goto_9

    .line 1877
    :catch_7
    move-exception v1

    goto :goto_8

    .line 1876
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public onDisplaySoftKeyboard(Landroid/webkit/WebView;Z)V
    .locals 3
    .parameter "view"
    .parameter "isTextView"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 711
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 712
    .local v0, webview:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 713
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->pause()V

    .line 716
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    .line 718
    .end local v0           #webview:Landroid/webkit/WebView;
    :cond_1
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4608
    const-string v0, "BrowserActivity LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " BrowserActivity onDownloadStart() Begin - url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contentDisposition - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mimetype - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_0

    .line 4611
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->stopAnimation()V

    .line 4616
    :cond_0
    const-string v0, "application/vnd.webkit.maybe.feed"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_6

    .line 4617
    const-string v0, "application/rss+xml"

    move-object v6, v0

    .line 4621
    :goto_0
    if-eqz p3, :cond_1

    const-string v3, "attachment"

    const/16 v5, 0xa

    move-object v0, p3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4625
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4626
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4627
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 4629
    if-eqz v0, :cond_4

    .line 4630
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 4633
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v0

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    move-wide v6, p5

    .line 4671
    invoke-static/range {v0 .. v7}, Lcom/android/browser/DownloadActivityChooser;->chooseActivity(Lcom/android/browser/BrowserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 4673
    return-void

    :cond_3
    move-object v1, v7

    .line 4661
    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v1, v7

    goto :goto_1

    :cond_6
    move-object v6, p4

    goto :goto_0
.end method

.method onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "BrowserActivity LOG"

    .line 4719
    const-string v0, "BrowserActivity LOG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " BrowserActivity onDownloadStartNoStream() Begin - url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentDisposition - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mimetype - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileNameEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4729
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4731
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 4732
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4737
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4738
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4739
    const v1, 0x7f0900d1

    .line 4745
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4818
    :goto_1
    return-void

    .line 4741
    :cond_0
    const v1, 0x7f0900d0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4742
    const v1, 0x7f0900cf

    goto :goto_0

    .line 4760
    :cond_1
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 4761
    iget-object v2, v1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4771
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4773
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4774
    const-string v4, "uri"

    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4775
    const-string v4, "cookiedata"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    const-string v2, "useragent"

    invoke-virtual {v3, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4777
    const-string v2, "notificationpackage"

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4779
    const-string v2, "notificationclass"

    const-class v4, Lcom/android/browser/OpenDownloadReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4781
    const-string v2, "visibility"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4783
    const-string v2, "mimetype"

    invoke-virtual {v3, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4784
    const-string v2, "hint"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4785
    const-string v0, "description"

    iget-object v1, v1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4786
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_2

    .line 4787
    const-string v0, "total_bytes"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4790
    :cond_2
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4796
    const-string v0, "storagetype"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4799
    :cond_3
    if-nez p4, :cond_4

    .line 4802
    const-string v0, "BrowserActivity LOG"

    const-string v0, " Browser activity onDownloadStartNoStream FetchUrlMimeType"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    new-instance v0, Lcom/android/browser/FetchUrlMimeType;

    invoke-direct {v0, p0}, Lcom/android/browser/FetchUrlMimeType;-><init>(Lcom/android/browser/BrowserActivity;)V

    new-array v1, v7, [Landroid/content/ContentValues;

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/browser/FetchUrlMimeType;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4816
    :goto_2
    const v0, 0x7f0900d9

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4762
    :catch_0
    move-exception v0

    .line 4765
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception trying to parse url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4811
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method onHideCustomView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4487
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 4508
    :cond_0
    :goto_0
    return-void

    .line 4491
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4493
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    .line 4496
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 4497
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 4498
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4499
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 4501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->setStatusBarVisibility(Z)V

    .line 4502
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4503
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 4505
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v2}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    goto :goto_0
.end method

.method onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4388
    .line 4390
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserActivity$16;

    invoke-direct {v2, p0, p4}, Lcom/android/browser/BrowserActivity$16;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$15;

    invoke-direct {v1, p0, p4}, Lcom/android/browser/BrowserActivity$15;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mJSAlertPopup:Landroid/app/AlertDialog;

    .line 4410
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x52

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3615
    if-ne v3, p1, :cond_0

    .line 3616
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 3617
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3664
    :goto_0
    return v0

    .line 3624
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v0, :cond_1

    .line 3628
    if-eq v3, p1, :cond_1

    .line 3630
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 3631
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    move v0, v1

    .line 3632
    goto :goto_0

    .line 3636
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 3664
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3641
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3642
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3643
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_3
    :goto_1
    move v0, v1

    .line 3648
    goto :goto_0

    .line 3645
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto :goto_1

    .line 3650
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3651
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    .line 3652
    goto :goto_0

    .line 3636
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 3672
    sparse-switch p1, :sswitch_data_0

    .line 3701
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 3674
    :sswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    goto :goto_0

    .line 3677
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3678
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3680
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_2
    move v1, v2

    .line 3697
    goto :goto_1

    .line 3682
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v1, :cond_2

    .line 3684
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    goto :goto_2

    .line 3686
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 3687
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_4

    .line 3688
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3689
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    .line 3691
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_2

    .line 3694
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->goBackOnePageOrQuit()V

    goto :goto_2

    .line 3672
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 1973
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onLowMemory: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1976
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 1977
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 10
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 1530
    if-nez p1, :cond_0

    .line 1531
    iget-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v6, :cond_3

    .line 1532
    iget-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    if-eqz v6, :cond_1

    .line 1536
    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1604
    :cond_0
    :goto_0
    return v9

    .line 1538
    :cond_1
    iget-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-eqz v6, :cond_2

    .line 1541
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1542
    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0

    .line 1546
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1547
    iput-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0

    .line 1552
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1553
    iput-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    .line 1554
    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1555
    iput-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    .line 1558
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1559
    .local v1, t:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 1560
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 1561
    .local v5, wv:Landroid/webkit/WebView;
    if-eqz v5, :cond_0

    .line 1562
    const/4 v2, 0x0

    .line 1563
    .local v2, thumbnailScale:F
    const/4 v4, 0x0

    .line 1564
    .local v4, thumbnailScaleWidth:F
    const/4 v3, 0x0

    .line 1566
    .local v3, thumbnailScaleHeight:F
    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    .line 1568
    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_6

    .line 1569
    const v2, 0x3f051eb8

    .line 1574
    :goto_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "prepare screen and title bar bitmap"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1576
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_7

    .line 1577
    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1586
    :cond_4
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 1588
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    if-nez v6, :cond_a

    .line 1589
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v6}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v7}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    .line 1596
    :cond_5
    :goto_3
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 1571
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_6
    const v2, 0x3ecccccd

    goto :goto_1

    .line 1579
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    if-ne v6, v7, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    if-eq v6, v7, :cond_4

    .line 1581
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1582
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1583
    :cond_9
    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 1590
    :cond_a
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v7}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 1591
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1592
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1593
    :cond_b
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v6}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v7}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method public onNetworkToggle(Z)V
    .locals 2
    .parameter "up"

    .prologue
    .line 5301
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-ne p1, v1, :cond_1

    .line 5319
    :cond_0
    :goto_0
    return-void

    .line 5303
    :cond_1
    if-eqz p1, :cond_3

    .line 5304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 5305
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 5306
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 5307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 5315
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5316
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 5317
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_0

    .line 5310
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 5311
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v1, :cond_2

    .line 5312
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v11, "android.intent.action.VIEW"

    const-string v6, "android.intent.action.SEARCH"

    .line 854
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onNewIntent, intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 860
    if-nez v0, :cond_2

    .line 862
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v9}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 863
    if-nez v0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 868
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 869
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    :cond_2
    move-object v1, v0

    .line 871
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 872
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 873
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 881
    const-string v0, "android.intent.action.DOWNLOAD_ACTIVITY_CHOOSER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v8, :cond_3

    .line 883
    invoke-static {p0, p1}, Lcom/android/browser/DownloadActivityChooser;->handleIntent(Lcom/android/browser/BrowserActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 889
    :cond_3
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 891
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 893
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_0

    .line 898
    :cond_4
    invoke-virtual {v1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 899
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v4

    .line 900
    if-eqz v4, :cond_5

    const-string v5, "query"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 906
    :cond_5
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 908
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    const-string v5, "extra_event"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    const-string v5, "value"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 927
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;

    move-result-object v4

    .line 928
    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 929
    new-instance v4, Lcom/android/browser/BrowserActivity$UrlData;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    .line 932
    :cond_7
    const-string v5, "com.android.browser.application_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 934
    iget-object v6, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v7, "javascript:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 937
    invoke-virtual {p0, v4, v8, v5}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 940
    :cond_8
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_d

    if-eqz v5, :cond_d

    :cond_9
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, 0x40

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    .line 946
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v5}, Lcom/android/browser/TabControl;->getTabFromId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 947
    if-eqz v0, :cond_b

    .line 948
    const-string v2, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reusing tab for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 953
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 957
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v0, v4}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)Z

    move-result v2

    .line 960
    if-eq v1, v0, :cond_a

    .line 961
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 962
    if-eqz v2, :cond_0

    .line 963
    invoke-direct {p0, v0, v4}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 968
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 969
    if-eqz v2, :cond_0

    .line 970
    invoke-direct {p0, v0, v4}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 977
    :cond_b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/browser/TabControl;->findUnusedTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_c

    .line 979
    if-eq v1, v0, :cond_0

    .line 980
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    goto/16 :goto_0

    .line 989
    :cond_c
    invoke-virtual {p0, v4, v8, v5}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 993
    :cond_d
    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v2, "about:debug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 995
    const-string v0, "about:debug.dom"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 996
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 997
    :cond_e
    const-string v0, "about:debug.dom.file"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 998
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 999
    :cond_f
    const-string v0, "about:debug.render"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1000
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 1001
    :cond_10
    const-string v0, "about:debug.render.file"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1002
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 1003
    :cond_11
    const-string v0, "about:debug.display"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1004
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto/16 :goto_0

    .line 1005
    :cond_12
    iget-object v0, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v2, "about:debug.drag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1006
    iget-object v0, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v2, 0x30

    sub-int/2addr v0, v2

    .line 1007
    if-lez v0, :cond_13

    const/16 v2, 0x9

    if-le v0, v2, :cond_14

    .line 1008
    :cond_13
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->setDragTracker(Landroid/webkit/WebView$DragTracker;)V

    goto/16 :goto_0

    .line 1010
    :cond_14
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/android/browser/MeshTracker;

    invoke-direct {v2, v0}, Lcom/android/browser/MeshTracker;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDragTracker(Landroid/webkit/WebView$DragTracker;)V

    goto/16 :goto_0

    .line 1013
    :cond_15
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_0

    .line 1018
    :cond_16
    const-string v0, "about:useragent"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1020
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/browser/BrowserDebug;->editUserAgent(Landroid/content/Context;Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 1024
    :cond_17
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1031
    invoke-virtual {v1, v10}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 1032
    iget-object v0, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v2, "rtsp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1035
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    invoke-direct {p0, v1, v4}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 1041
    :cond_18
    invoke-direct {p0, v1, v4}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2343
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    if-nez v0, :cond_0

    move v0, v4

    .line 2555
    :goto_0
    return v0

    .line 2348
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v4

    .line 2349
    goto :goto_0

    .line 2351
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v0, :cond_2

    .line 2356
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 2358
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2549
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 2550
    goto :goto_0

    .line 2361
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 2554
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    move v0, v5

    .line 2555
    goto :goto_0

    .line 2365
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->editUrl()V

    goto :goto_1

    .line 2375
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->isInputMethodActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2376
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2377
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2378
    if-eqz v1, :cond_3

    .line 2379
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2380
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/BrowserActivity$12;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserActivity$12;-><init>(Lcom/android/browser/BrowserActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2387
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openActiveTabsPage()V

    goto :goto_1

    .line 2393
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2395
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 2396
    const-string v2, "url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2397
    const-string v2, "title"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2398
    const-string v2, "touch_icon_url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2399
    const-string v2, "thumbnail"

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2400
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2411
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_5

    .line 2412
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto :goto_1

    .line 2414
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 2419
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_1

    .line 2423
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto/16 :goto_1

    .line 2428
    :pswitch_8
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2429
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto/16 :goto_1

    .line 2432
    :cond_6
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeCurrentWindow()V

    goto/16 :goto_1

    .line 2436
    :pswitch_9
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2437
    if-eqz v0, :cond_3

    .line 2438
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2439
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2444
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2446
    const-string v1, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2448
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2452
    :pswitch_b
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createShortcutIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2453
    if-eqz v0, :cond_3

    .line 2455
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2456
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2461
    :pswitch_c
    iget v0, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    if-ne v0, v5, :cond_7

    .line 2463
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2464
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2468
    :cond_7
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createBrightPopup()V

    goto/16 :goto_1

    .line 2473
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->showFindDialog()V

    goto/16 :goto_1

    .line 2481
    :pswitch_e
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2482
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    goto/16 :goto_1

    .line 2487
    :pswitch_f
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_1

    .line 2492
    :pswitch_10
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2493
    if-nez v0, :cond_8

    .line 2494
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    move v0, v4

    .line 2495
    goto/16 :goto_0

    .line 2497
    :cond_8
    invoke-virtual {v0}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 2498
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 2504
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->debugDump()V

    .line 2506
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/browser/BrowserDebug;->dumpWebView(Landroid/content/Context;Landroid/webkit/WebView;)V

    goto/16 :goto_1

    .line 2510
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpV8Counters()V

    goto/16 :goto_1

    .line 2514
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 2518
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 2522
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->viewDownloads()V

    goto/16 :goto_1

    .line 2534
    :pswitch_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    move v1, v4

    .line 2535
    :goto_2
    sget-object v2, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2536
    sget-object v2, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_9

    .line 2537
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2538
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    if-eq v0, v2, :cond_3

    .line 2540
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    goto/16 :goto_1

    .line 2535
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2358
    :pswitch_data_0
    .packed-switch 0x7f0d00a3
        :pswitch_1
        :pswitch_3
        :pswitch_c
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_15
        :pswitch_a
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_9
        :pswitch_f
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_6
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    .line 1649
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_2

    .line 1653
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    goto :goto_0

    .line 1654
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-nez v0, :cond_0

    .line 1658
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4197
    const-string v0, "browser"

    const-string v1, "BrowserActivity.onPageFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 4202
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 4205
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4206
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4207
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4259
    :cond_0
    sget-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    if-eqz v0, :cond_1

    .line 4260
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    .line 4261
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 4264
    :cond_1
    return-void
.end method

.method onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v2, "browser"

    .line 4125
    const-string v0, "browser"

    const-string v0, "BrowserActivity.onPageStarted"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebViewTimers()V

    .line 4134
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 4136
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserActivity;->resetLockIcon(Ljava/lang/String;)V

    .line 4137
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    invoke-virtual {p0, p3}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 4141
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 4142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    .line 4144
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity onPageStarted() : mIsNetworkUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4147
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4148
    if-eqz v0, :cond_1

    .line 4149
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 4150
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity onPageStarted(): mIsNetworkUp from info.isAvailable()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V

    .line 4154
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    .line 4155
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4158
    :try_start_0
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, p2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 4159
    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4163
    :goto_0
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 4164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4165
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    .line 4166
    const/high16 v1, 0x140

    invoke-static {v0, v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 4190
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4191
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4192
    return-void

    .line 4160
    :catch_0
    move-exception v0

    .line 4161
    const-string v0, "browser"

    move-object v0, v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v2, "browser"

    .line 1737
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1741
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onPause: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_1

    .line 1749
    const-string v0, "browser"

    const-string v0, "BrowserActivity is already paused."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1756
    if-eqz v0, :cond_3

    .line 1757
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1758
    if-eqz v1, :cond_3

    .line 1763
    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    if-lez v2, :cond_3

    .line 1765
    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_7

    .line 1766
    const v2, 0x3f051eb8

    .line 1771
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "prepare screen and title bar bitmap"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1773
    if-nez v3, :cond_8

    .line 1774
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1783
    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/browser/Tab;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 1785
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 1786
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    .line 1793
    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1799
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->pauseCurrentTab()V

    .line 1800
    iput-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 1801
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1802
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1803
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1811
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_5

    .line 1812
    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 1815
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 1818
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1819
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1820
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 1822
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v0, :cond_6

    .line 1823
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v0}, Lcom/android/browser/BrowserRotateControl;->onPause()V

    .line 1828
    :cond_6
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1830
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onPaused()V

    goto/16 :goto_0

    .line 1768
    :cond_7
    const v2, 0x3ecccccd

    goto/16 :goto_1

    .line 1776
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    if-ne v4, v5, :cond_9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    if-eq v4, v5, :cond_d

    .line 1778
    :cond_9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1779
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1780
    :cond_a
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_2

    .line 1787
    :cond_b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1788
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1789
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1790
    :cond_c
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    :cond_d
    move-object v1, v3

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f0d00b2

    const v2, 0x7f0d00a2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2862
    iput-boolean v5, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 2866
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2869
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 2871
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 2880
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    if-eq v0, v1, :cond_0

    .line 2881
    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2882
    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2883
    invoke-interface {p1, v3, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2885
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2889
    if-eqz v0, :cond_6

    .line 2890
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    .line 2891
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    .line 2892
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v2

    move v2, v1

    move v1, v6

    .line 2894
    :goto_0
    const v3, 0x7f0d00bf

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2895
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2897
    const v2, 0x7f0d00b3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2898
    if-nez v0, :cond_3

    move v0, v5

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2900
    const v0, 0x7f0d00a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2903
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v5, v2, :cond_4

    .line 2904
    :cond_1
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2923
    :goto_2
    const v0, 0x7f0d00aa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2924
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2928
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2931
    const v0, 0x7f0d00a7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2934
    const v0, 0x7f0d00a3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2938
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2939
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2940
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2941
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2942
    const v1, 0x7f0d00ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_5

    move v0, v5

    :goto_3
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2944
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isNavDump()Z

    move-result v0

    .line 2945
    const v1, 0x7f0d00b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2946
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2947
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2949
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    .line 2950
    const v1, 0x7f0d00b1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2951
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2952
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2954
    const v0, 0x7f0d00a4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2956
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 2991
    :goto_4
    const v0, 0x7f0d00a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2994
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2995
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3000
    :cond_2
    :goto_5
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 3001
    return v5

    .line 2873
    :pswitch_0
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    if-eq v0, v1, :cond_2

    .line 2874
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2875
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2876
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_5

    :cond_3
    move v0, v4

    .line 2898
    goto/16 :goto_1

    .line 2906
    :cond_4
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    move v0, v4

    .line 2942
    goto :goto_3

    .line 2959
    :pswitch_1
    const v1, 0x7f020045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 2963
    :pswitch_2
    const v1, 0x7f020046

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 2967
    :pswitch_3
    const v1, 0x7f020047

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 2971
    :pswitch_4
    const v1, 0x7f020048

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 2975
    :pswitch_5
    const v1, 0x7f020049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 2979
    :pswitch_6
    const v1, 0x7f02004a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 2983
    :pswitch_7
    const v1, 0x7f02004b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 2987
    :pswitch_8
    const v1, 0x7f02004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v0, v4

    move v1, v4

    move v2, v4

    goto/16 :goto_0

    .line 2871
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 2956
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4414
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p2}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 4416
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 4425
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onProgressChanged: progress == 100 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_1

    .line 4428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    .line 4429
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 4431
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-nez v0, :cond_1

    .line 4432
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 4436
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setRss(Z)V

    .line 4437
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setRss(Z)V

    .line 4457
    :cond_2
    :goto_0
    return-void

    .line 4440
    :cond_3
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_4

    .line 4444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    .line 4445
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 4452
    :cond_4
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-eqz v0, :cond_2

    .line 4454
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "browser"

    .line 1422
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1425
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onResume: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPendingZoomViewResume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->forceRGB565()V

    .line 1431
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->initIntentFilter()V

    .line 1434
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1435
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1439
    const v0, 0x7f090144

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1440
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v0, :cond_2

    .line 1445
    const-string v0, "browser"

    const-string v0, "BrowserActivity is already resumed."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1453
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->resumeCurrentTab()V

    .line 1454
    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 1455
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebViewTimers()V

    .line 1457
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_3

    .line 1458
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onResumed()V

    .line 1460
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1461
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1462
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1465
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1467
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1469
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 1471
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v0, :cond_5

    .line 1472
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v0}, Lcom/android/browser/BrowserRotateControl;->onResume()V

    .line 1476
    :cond_5
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1477
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onResume mPendingZoomViewResume mZoomView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1481
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_7

    .line 1482
    if-eqz v0, :cond_6

    .line 1483
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1485
    :cond_6
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v3}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 1486
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->resume()V

    .line 1489
    :cond_7
    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1722
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onSaveInstanceState: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 1733
    return-void
.end method

.method onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .parameter "view"
    .parameter "callback"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4461
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 4463
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v3}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 4465
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4466
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 4484
    :goto_0
    return-void

    .line 4471
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4472
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    .line 4473
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 4476
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 4477
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 4479
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4481
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->setStatusBarVisibility(Z)V

    .line 4482
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4483
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1346
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1347
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onStart: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1358
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_1

    .line 1359
    if-eqz v0, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->resume()V

    .line 1384
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->setBatteryADC(Z)V

    .line 1385
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1389
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1390
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onStop: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1405
    if-eqz v0, :cond_0

    .line 1406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->pause()V

    .line 1412
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1413
    const-string v1, "brightness"

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1415
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->setBatteryADC(Z)V

    .line 1416
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1954
    const-string v0, "BrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged:hasFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserRotateControl;->onWindowFocusChanged(Z)V

    .line 1961
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1962
    if-eqz v0, :cond_1

    .line 1963
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHasRotateSupport(Z)V

    .line 1966
    :cond_1
    return-void
.end method

.method public openActiveTabsPage()V
    .locals 21

    .prologue
    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v12

    .line 726
    .local v12, t:Lcom/android/browser/Tab;
    if-nez v12, :cond_0

    .line 815
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v19

    .line 731
    .local v19, wv:Landroid/webkit/WebView;
    const/4 v15, 0x0

    .line 732
    .local v15, thumbnailScale:F
    const/16 v17, 0x0

    .line 733
    .local v17, thumbnailScaleWidth:F
    const/16 v16, 0x0

    .line 735
    .local v16, thumbnailScaleHeight:F
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 736
    const v15, 0x3f051eb8

    .line 737
    const v17, 0x3f051eb8

    .line 738
    const v16, 0x3f051eb8

    .line 747
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 754
    new-instance v5, Lcom/android/browser/ActiveTabsPage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ActiveTabsPage;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    .line 756
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPageHolder:Lcom/android/browser/ActiveTabsPage;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserActivity;->mCurrentTabIndex:I

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/ActiveTabsPage;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/ActiveTabsPage;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 763
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    move-object v6, v0

    sget-object v7, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    const/4 v7, 0x0

    .line 766
    .local v7, b:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_3

    .line 767
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 770
    :cond_3
    if-nez v7, :cond_7

    .line 771
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v5, v5

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .end local v7           #b:Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 780
    .restart local v7       #b:Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 781
    .local v11, canv:Landroid/graphics/Canvas;
    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v14

    .line 784
    .local v14, tbHeight:I
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    sub-int v20, v5, v14

    .line 785
    .local v20, wvY:I
    const/4 v5, 0x0

    move/from16 v0, v20

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 786
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getScale()F

    move-result v6

    move-object/from16 v0, v19

    move-object v1, v11

    move v2, v5

    move/from16 v3, v20

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->grabScreen(Landroid/graphics/Canvas;IIF)V

    .line 787
    invoke-virtual {v12, v7}, Lcom/android/browser/Tab;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 790
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    sub-int v18, v14, v5

    .line 791
    .local v18, visibleTBHeight:I
    const/4 v5, 0x0

    move/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 793
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserActivity;->mWVWidth:I

    .line 794
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserActivity;->mWVHeight:I

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mStartRect:Landroid/graphics/RectF;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mStartRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mWVWidth:I

    move v6, v0

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mStartRect:Landroid/graphics/RectF;

    move-object v5, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v6, v0

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mStartRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mWVHeight:I

    move v6, v0

    add-int v6, v6, v18

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-nez v5, :cond_a

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    .line 810
    :cond_5
    :goto_3
    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-direct {v13, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 811
    .local v13, tbCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v5, v0

    invoke-virtual {v5, v13}, Lcom/android/browser/TitleBar;->draw(Landroid/graphics/Canvas;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mCurrentTabIndex:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mStartRect:Landroid/graphics/RectF;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/browser/ActiveTabsPage;->getRectByIndex(I)Landroid/graphics/RectF;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/ActiveTabsPage;->init(ILandroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)V

    .line 814
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserActivity;->mMenuState:I

    goto/16 :goto_0

    .line 740
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v11           #canv:Landroid/graphics/Canvas;
    .end local v13           #tbCanvas:Landroid/graphics/Canvas;
    .end local v14           #tbHeight:I
    .end local v18           #visibleTBHeight:I
    .end local v20           #wvY:I
    :cond_6
    const v15, 0x3ecccccd

    .line 741
    const v17, 0x3ecccccd

    .line 742
    const v16, 0x3f051eb8

    goto/16 :goto_1

    .line 773
    .restart local v7       #b:Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    if-ne v5, v6, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    if-eq v5, v6, :cond_4

    .line 775
    :cond_8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_9

    .line 776
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 777
    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v5, v5

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .end local v7           #b:Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #b:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 804
    .restart local v11       #canv:Landroid/graphics/Canvas;
    .restart local v14       #tbHeight:I
    .restart local v18       #visibleTBHeight:I
    .restart local v20       #wvY:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_b

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 807
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mTitleBarBitmapHolder:Landroid/graphics/Bitmap;

    goto/16 :goto_3
.end method

.method public openActiveTabsPage_ThenAddTab()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openActiveTabsPage()V

    .line 819
    const-string v1, "browser"

    const-string v2, "openActiveTabsPage_ThenAddTab"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v1}, Lcom/android/browser/ActiveTabsPage;->addNewThumbnail()Lcom/android/browser/Tab;

    move-result-object v0

    .line 821
    .local v0, tab:Lcom/android/browser/Tab;
    return-object v0
.end method

.method openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 4540
    :goto_0
    return-void

    .line 4534
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 4535
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4536
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4537
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4538
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public openTab(Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 4
    .parameter "url"

    .prologue
    .line 3279
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3280
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 3281
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 3282
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 3283
    .local v1, view:Landroid/webkit/WebView;
    invoke-direct {p0, v1, p1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .end local v1           #view:Landroid/webkit/WebView;
    :cond_0
    move-object v2, v0

    .line 3287
    .end local v0           #t:Lcom/android/browser/Tab;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    goto :goto_0
.end method

.method openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .locals 7
    .parameter "urlData"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    const/4 v6, 0x0

    .line 3247
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 3248
    .local v1, currentTab:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3249
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 3250
    .local v0, closeTab:Lcom/android/browser/Tab;
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 3251
    if-ne v0, v1, :cond_0

    .line 3252
    const/4 v1, 0x0

    .line 3255
    .end local v0           #closeTab:Lcom/android/browser/Tab;
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v5, p1, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    .line 3257
    .local v2, tab:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 3260
    .local v3, webview:Landroid/webkit/WebView;
    if-eqz v1, :cond_1

    .line 3261
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 3265
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v2}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 3266
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 3267
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3268
    invoke-direct {p0, v2, p1}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    .line 3275
    :goto_0
    return-object v2

    .line 3272
    :cond_2
    invoke-virtual {p0, v6, v6}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method openTabToHomePage()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public postMessage(IIILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3741
    return-void
.end method

.method removeActiveTabPage(Z)V
    .locals 3
    .parameter "needToAttach"

    .prologue
    .line 2262
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 2264
    const v1, 0x7f0d00a2

    iput v1, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 2265
    if-eqz p1, :cond_0

    .line 2266
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 2268
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2269
    .local v0, webview:Landroid/webkit/WebView;
    if-eqz v0, :cond_1

    .line 2270
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2273
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->onWindowFocusChanged(Z)V

    .line 2275
    return-void
.end method

.method removeMessages(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "object"

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3746
    return-void
.end method

.method resetOrientation()V
    .locals 1

    .prologue
    .line 5805
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    if-eqz v0, :cond_0

    .line 5806
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrowserRotateControl:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v0}, Lcom/android/browser/BrowserRotateControl;->resetOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->setRequestedOrientation(I)V

    .line 5808
    :cond_0
    return-void
.end method

.method resetTitleAndRevertLockIcon()V
    .locals 1

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3425
    :cond_0
    :goto_0
    return-void

    .line 3422
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->revertLockIcon()V

    .line 3423
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 3424
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    goto :goto_0
.end method

.method revertVoiceTitleBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1207
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 1208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 1210
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 1212
    return-void
.end method

.method setCurrentTabIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 5748
    iput p1, p0, Lcom/android/browser/BrowserActivity;->mCurrentTabIndex:I

    .line 5749
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3508
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3509
    return-void
.end method

.method public setFindDialogText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0, p1}, Lcom/android/browser/FindDialog;->setText(Ljava/lang/String;)V

    .line 2840
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 5290
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 5291
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 5292
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5294
    :cond_0
    return-void
.end method

.method setShouldShowErrorConsole(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    .line 5642
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    if-ne p1, v2, :cond_1

    .line 5672
    :cond_0
    :goto_0
    return-void

    .line 5646
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 5647
    .local v1, t:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 5652
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    .line 5654
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 5656
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz p1, :cond_3

    .line 5658
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v2

    if-lez v2, :cond_2

    .line 5659
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 5665
    :goto_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5661
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 5669
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "title"

    .prologue
    .line 3458
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 3459
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    .line 3462
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 3463
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3466
    :goto_0
    return-void

    .line 3464
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 3465
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, ""

    const-string v3, ";"

    .line 4269
    const-string v0, "browser"

    const-string v1, "BrowserActivity.shouldOverrideUrlLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    const-string v0, "wtai://wp/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4274
    const-string v0, "wtai://wp/mc;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wtai://wp/mc;"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4278
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 4378
    :goto_0
    return v0

    .line 4283
    :cond_0
    const-string v0, "wtai://wp/sd;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 4285
    goto :goto_0

    .line 4290
    :cond_1
    const-string v0, "wtai://wp/ap;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4293
    const-string v0, "wtai://wp/ap;"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4294
    const-string v1, ""

    .line 4295
    const-string v1, ""

    .line 4297
    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 4300
    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4301
    const-string v2, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4302
    const-string v2, "%20"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4309
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4310
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4311
    const-string v0, "phone"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4312
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 4314
    goto :goto_0

    :cond_2
    move-object v1, v0

    move-object v0, v6

    .line 4306
    goto :goto_1

    .line 4322
    :cond_3
    const-string v0, "about:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v4

    .line 4323
    goto :goto_0

    .line 4329
    :cond_5
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4337
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_7

    .line 4338
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 4339
    if-eqz v0, :cond_6

    .line 4340
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://search?q=pname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4342
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4343
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 4344
    goto/16 :goto_0

    .line 4330
    :catch_0
    move-exception v0

    .line 4331
    const-string v1, "Browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 4332
    goto/16 :goto_0

    :cond_6
    move v0, v4

    .line 4346
    goto/16 :goto_0

    .line 4352
    :cond_7
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4354
    const-string v1, "http:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "https:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4355
    :cond_8
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4365
    :goto_2
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_a

    move v0, v5

    .line 4366
    goto/16 :goto_0

    .line 4358
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 4368
    :catch_1
    move-exception v0

    .line 4373
    :cond_a
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v0, :cond_b

    .line 4374
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    .line 4375
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    move v0, v5

    .line 4376
    goto/16 :goto_0

    :cond_b
    move v0, v4

    .line 4378
    goto/16 :goto_0
.end method

.method shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 5675
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    return v0
.end method

.method public showFindDialog()V
    .locals 3

    .prologue
    .line 2823
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-nez v1, :cond_0

    .line 2824
    new-instance v1, Lcom/android/browser/FindDialog;

    invoke-direct {v1, p0}, Lcom/android/browser/FindDialog;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    .line 2827
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2828
    .local v0, webview:Landroid/webkit/WebView;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_1

    .line 2830
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2831
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 2835
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 2836
    return-void
.end method

.method showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5203
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5204
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5206
    if-eqz p5, :cond_0

    .line 5207
    const v0, 0x7f0d0059

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5209
    :cond_0
    if-eqz p6, :cond_1

    .line 5210
    const v0, 0x7f0d005b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    invoke-virtual {p5, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5214
    :cond_1
    if-nez p4, :cond_3

    .line 5215
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5219
    :goto_0
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 5220
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09000d

    new-instance v0, Lcom/android/browser/BrowserActivity$27;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity$27;-><init>(Lcom/android/browser/BrowserActivity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    new-instance v3, Lcom/android/browser/BrowserActivity$26;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/BrowserActivity$26;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$25;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/BrowserActivity$25;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5258
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5260
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5261
    if-eqz p7, :cond_2

    .line 5262
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 5266
    :goto_1
    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    .line 5267
    return-void

    .line 5264
    :cond_2
    const v1, 0x7f0d0059

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    move-object v0, p4

    goto :goto_0
.end method

.method showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0d0081

    const v5, 0x7f030022

    .line 5037
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v2

    .line 5039
    if-nez v2, :cond_0

    .line 5125
    :goto_0
    return-void

    .line 5043
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 5045
    const v0, 0x7f0d006c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5048
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5049
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5051
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f090019

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 5055
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5056
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5058
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f09001a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 5062
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5063
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5065
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 5069
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5070
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5072
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5076
    :cond_4
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 5077
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    .line 5078
    iput-object p3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 5079
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserActivity$24;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$24;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090013

    new-instance v2, Lcom/android/browser/BrowserActivity$23;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserActivity$23;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$22;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method showTitleBarContextMenu()V
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1699
    :goto_0
    return-void

    .line 1695
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1696
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 1698
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method showVoiceSearchResults(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 831
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 833
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    .line 834
    check-cast v0, Lcom/android/browser/BrowserProvider;

    .line 836
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 837
    if-eqz v2, :cond_0

    .line 838
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserProvider;->setQueryResults(Ljava/util/ArrayList;)V

    .line 841
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 843
    const-string v0, "browser-key"

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 845
    const-string v1, "android.search.CONTEXT_IS_VOICE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 846
    invoke-virtual {p0, p1, v3, v0, v3}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 847
    return-void
.end method

.method showVoiceTitleBar(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    .line 1200
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 1201
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 1203
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v7, "http://baidu.mobi/s?vit=union&from=124l&word=%s&ua=parameter&uid=parameter"

    const-string v4, "%s"

    .line 5577
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5578
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v1, v5

    .line 5580
    :goto_0
    sget-object v2, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 5581
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5583
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 5584
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 5585
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5588
    :cond_0
    if-eqz v1, :cond_1

    .line 5589
    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5634
    :cond_1
    :goto_1
    return-object v0

    .line 5578
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 5594
    :cond_3
    if-eqz v1, :cond_5

    .line 5597
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->parseUrlShortcut(Ljava/lang/String;)I

    move-result v1

    .line 5598
    if-eqz v1, :cond_4

    .line 5599
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5600
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5601
    packed-switch v1, :pswitch_data_0

    .line 5631
    :cond_4
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5634
    const-string v1, "http://baidu.mobi/s?vit=union&from=124l&word=%s&ua=parameter&uid=parameter"

    const-string v1, "%s"

    invoke-static {v0, v7, v4}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5604
    :pswitch_0
    const-string v0, "http://baidu.mobi/s?vit=union&from=124l&word=%s&ua=parameter&uid=parameter"

    const-string v0, "%s"

    invoke-static {v2, v7, v4}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5606
    :pswitch_1
    const-string v0, "http://baidu.mobi/s?word=%s&mark=3"

    const-string v1, "%s"

    invoke-static {v2, v0, v4}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5608
    :pswitch_2
    const-string v0, "http://wapbaike.baidu.com/search?word=%s"

    const-string v1, "%s"

    invoke-static {v2, v0, v4}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5623
    :cond_5
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5624
    invoke-static {v0}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x1000

    const-string v5, "browser"

    .line 2160
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2161
    const-string v0, "browser"

    const-string v0, "startSearch : Cancelled because custom view is on"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :goto_0
    return-void

    .line 2165
    :cond_0
    if-nez p3, :cond_3

    .line 2166
    const-string v0, "browser-type"

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2169
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    .line 2170
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2171
    const-string v1, "android.search.DISABLE_VOICE_SEARCH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2176
    :cond_1
    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialQuery = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectInitialQuery = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appSearchData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalSearch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 2184
    const/4 v1, 0x0

    const/16 v2, 0x1000

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2185
    :try_start_1
    const-string v2, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new initialQuery = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2192
    :goto_2
    invoke-super {p0, v1, p2, v0, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 2187
    :catch_0
    move-exception v1

    move-object v1, p1

    .line 2189
    :goto_3
    const-string v2, "browser"

    const-string v2, "initialQuery is null."

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2187
    :catch_1
    move-exception v2

    goto :goto_3

    :cond_2
    move-object v1, p1

    goto :goto_2

    :cond_3
    move-object v0, p3

    goto/16 :goto_1
.end method

.method stopLoading()V
    .locals 3

    .prologue
    .line 3705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    .line 3706
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 3707
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 3708
    if-nez v0, :cond_0

    .line 3723
    :goto_0
    return-void

    .line 3711
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3716
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3719
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 3720
    const v0, 0x7f090027

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 3722
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method subWindowActive()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method switchToTab(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 2205
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2206
    .local v1, tab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2207
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    .line 2208
    :cond_0
    const/4 v2, 0x0

    .line 2219
    :goto_0
    return v2

    .line 2210
    :cond_1
    if-eqz v0, :cond_2

    .line 2213
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 2215
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2216
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 2217
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 2218
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 2219
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public viewDownloads()V
    .locals 2

    .prologue
    .line 5451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5453
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 5454
    return-void
.end method
